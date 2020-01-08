development version

#  HomeAssistant add-on for gmusicproxy (with extensions)

Code forked from:
https://github.com/M0Rf30/gmusicproxy

## HOWTO

### How to install addon to hass.io ?

1) In homeassistant select hass.io from left panel
2) Go to ADD-ON STORE
3) Add new repository with url: https://github.com/miikkajo/hassio_addons
4) Refresh repositories with refresh button up right 
5) Select gmusicproxy addon and click install

### How to create oauth credentials?

After addon is started and no credentials file was found 
Add on will sleep for 3600 sec to wait for configuring oauth credentials

#### enter to bash session inside container:

find out name of addon container:
  #> sudo docker ps --format '{{.Names}}' |grep gmusicproxy  
  #> addon_f8f3f8ff_gmusicproxy

then using container name start bash session inside container  
 #> sudo docker exec -i -t addon_f8f3f8ff_gmusicproxy bash  
 bash-5.0# 

#### in bash perform oath:   
 bash-5.0#  /GMusicProxy -o

#### Copy url from console to browser and authenticate and paste key to back to prompt:
Visit the following url: [Authentication url]  
Follow the prompts, then paste the auth code here and hit enter:  
[Paste authentication code]  
Done.

This will create mobileclient.cred in /data directory for future oauth logins

#### Restart addon
After credentials file is generated succesfully, restart addon to start gmusicproxy

## Cannot get to OS to run docker commands ?

If it is not possible to get to OS shell to run docker commands  
there is Portainer add-on available:  
https://github.com/hassio-addons/addon-portainer  

With Portainer you can manage containers and get to exec console with web browser.  
Follow instructions when installing add-on, disable protection mode and start Portainer,  
then go to Settings and on Hidden containers remove add-on type from filter list.  

Then you can see docker containers on Containers section  
find addon-gmusicproxy container and click “>_” button on quick actions  

Defaults are command /bin/bash as root, keep those and push Connect and you will have exec console  

There you can type "/GMusicProxy -o " command and make credentials file  

you can use ‘cat /data/mobileclient.cred’ after to check that file was generated  

***
# Added extensions

## Functions for queue handling

Big idea of gmusicproxy queue is to have static queue that can withstand hass restart  
Queue is stored in queue.json file in /data  
Queue index is also stored in track_index file  


## Simple UI for creating Queue for gproxy_player 
(https://github.com/miikkajo/gmproxy_player)  
UI is found from default ingress url, from add-on page OPEN WEB UI  
And from sidebar, if "Show in sidebar" is enabled  
And browsing directly to URL:  

/browser
http://192.168.1.1:9999/browser  

### Create new queue of tracks  
#### clear existing queue 
/clear_queue  
http://192.168.1.1:9999/clear_queue  

### Add tracks to queue
/append_to_track_queue  
params artist,album,station,playlist
http://192.168.1.1:9999/append_to_track_queue?artist=death

### List tracks in queue 
/get_queue_json

### Advance track_index and return track id 
/next_track  

### Reduce track_index and return track id
/prev_track  

### Return current track id
/current_track

## Functions to return json data for external players

#### Get names of artists in collection:
/get_collection_artists_json  
params None  
http://192.168.1.1:9999/get_collection_artists_json

#### Get names of albums in collection
/get_collection_albums_json  
params artist, album  
http://192.168.1.1:9999/get_collection_albums_json?artist=death&album=human

#### Return track id's, filter with artist and album names
/get_tracks_json  
params artist, album  
http://192.168.1.1:9999/get_tracks_json?artist=William%20Shatner  

#### Return track object
/get_track_json   
params id  
http://192.168.1.1:9999/get_track_json?id=4cb3a344-65ca-39f4-b1ee-ae27de0cf3ac


# GMusicProxy – Google Play Music Proxy

*"Let's stream Google Play Music using any media-player"*

License: **GPL v3**

## About
This program permits the use of Google Play Music with All Access subscription with any music player that is able to stream MP3 files and to manage M3U playlists (e.g., [MPD server][1], [VLC][2], ...). It can work also with a free account without All Access extras.

This project is not supported nor endorsed by Google.

[0]: http://gmusicproxy.github.io/
[1]: http://www.musicpd.org/
[2]: http://www.videolan.org/vlc/
[3]: https://github.com/simon-weber/gmusicapi

## [Contributors](CONTRIBUTORS.md)
## [Changelog](CHANGELOG.md)
## [License](LICENSE.md)
