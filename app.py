import requests
import os
import json

movie = os.environ['movie']

#x = input("movie name") 

r =requests.get('http://www.omdbapi.com/?apikey=fb0ca6e5&s=movie')

data = r.text

parse_json = json.loads(data)
#result = parse_json['search']['title']
print(r)