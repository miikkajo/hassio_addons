HomeAssistant add-on for gmusicproxy

Code forked from:
https://github.com/M0Rf30/gmusicproxy

Create oauth token and copy it to add-on data directory 
like so:
'../addons/data/local_gmusicproxy/mobileclient.cred'

added two functions:

# get artists in collection:
#curl http://192.168.0.2:9999/get_collection_artists_json

# get albums in collection, or albums from specific artist
#curl http://192.168.0.2:9999/get_collection_albums_json?artist=death
#["Individual Thought Patterns", "Scream bloody gore"]



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
