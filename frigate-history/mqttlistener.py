#!/usr/bin/python3
import json
import time
import yaml
import tempfile
import filecmp
import os.path
import paho.mqtt.client as mqtt
import shutil
import argparse

def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))

def on_message(client, userdata, msg):
    print (f"mesg: {msg.topic}")
    basename = f"/config/www/frigate_history/{msg.topic.replace('/','_')}"

    try:
        if not os.path.isdir("/config/www/frigate_history"):
            os.mkdir(basename)
    except OSError as error:
        print (error)

    try:
        if not os.path.isdir(basename):
            os.mkdir(basename)
    except OSError as error:
        print (error)

    with tempfile.NamedTemporaryFile() as tempf:
        tempf.write(msg.payload)
        latest = f"{basename}/1.jpg"

        if os.path.isfile(latest):
            if filecmp.cmp(tempf.name,latest):
                print('duplicate image, ignoring')
                return
        else:    
            with open(latest,'wb') as outfile:
                print('write image to disk')  
                outfile.write(msg.payload)
        
        for i in range(HISTORY_SIZE -1,0,-1):
            source = f"{basename}/{i}.jpg"
            target = f"{basename}/{i+1}.jpg"
            print ("Rock & Roll history")
            if not os.path.isfile(source):
                shutil.copy(tempf.name,source)
            shutil.copy(source,target)

        shutil.copy(tempf.name,f"{basename}/1.jpg")

def on_subscribe(mqttc, obj, mid, granted_qos):
    print("Subscribed: " + str(mid) + " " + str(granted_qos))

def on_log(mqttc, obj, level, string):
    print(string)


HISTORY_SIZE = int(os.environ.get('HISTORY_SIZE',20))
topic = f"{os.environ.get('MQTT_TOPIC_PREFIX', 'frigate')}/+/+/snapshot"
print (f"history size: {HISTORY_SIZE}")
client = mqtt.Client()
client.username_pw_set(username=os.environ.get('MQTT_USER'),password=os.environ.get('MQTT_PASSWORD'))
client.on_connect = on_connect
client.on_message = on_message
client.on_subscribe = on_subscribe
#client.on_log = on_log
client.connect(host=os.environ.get('MQTT_HOST'),port=os.environ.get('MQTT_PORT'))
client.subscribe(topic,2)
client.loop_forever()
