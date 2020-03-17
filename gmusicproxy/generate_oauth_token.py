import gmusicapi
api = gmusicapi.Mobileclient()
api.perform_oauth(open_browser=False,storage_filepath='/data/mobileclient.cred')
