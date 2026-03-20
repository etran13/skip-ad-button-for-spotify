import spotipy

import spotipy
from spotipy.oauth2 import SpotifyOAuth

sp = spotipy.Spotify(auth_manager=SpotifyOAuth(client_id="ce26bd907d26499b8ab929d1bdbae3b3",
                                               client_secret="adc766404c2045ceaa360a51a554b19d",
                                               redirect_uri="http://127.0.0.1:9090",
                                               scope="user-library-read"))

taylor_uri = 'spotify:artist:06HL4z0CvFAxyc27GXpf02'

results = sp.artist_albums(taylor_uri, album_type='album') #Get albums in a dictionary?
albums = results['items'] #Get everything under key 'items'
while results['next']:
    results = sp.next(results)
    albums.extend(results['items'])

for album in albums:
    print(album['name'])