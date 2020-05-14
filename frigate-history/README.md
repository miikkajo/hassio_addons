# Homeassistant addon for frigate history
frigate-history listens to [frigate](https://github.com/blakeblackshear/frigate) mqtt events and dumps snapshots to disk 

it rolls stack of images with desired historysize



## example lovelace config:
```
  - badges: []
    cards:
      - cards:
          - cards:
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/1.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/2.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/3.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/4.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/5.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/6.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/7.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/8.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/9.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/10.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/11.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/12.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/13.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/14.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/15.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/16.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/17.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/18.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/19.jpg?random={{as_timestamp(now())}})
                type: markdown
              - content: >-
                  ![](/local/frigate_history/frigate_frontdoor_person_snapshot/20.jpg?random={{as_timestamp(now())}})
                type: markdown
            parameters:
              centeredSlides: true
              navigation: null
              slidesPerView: auto
              spaceBetween: 8
              zoom: true
            start_card: 0
            type: 'custom:swipe-card'
        type: vertical-stack
    panel: true
    path: detections
    title: Detections
```
