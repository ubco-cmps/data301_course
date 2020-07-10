# DATA 301 Lab 9 - Q2- Trip planning with Python
# Ramon Lawrence - 99999999
import googlemaps
from datetime import datetime

# TODO: Replace the API key below with a valid API key. Will not work otherwise.
gmaps = googlemaps.Client(key='fill in')

# Use Geocoding API to look up latitude, longitude for places on road trip
locations = []
geocode = []
num = 5

for i in range(0,num):
    loc = input("Enter a location: ")
    locations.append(loc)
    geocode_result = gmaps.geocode(loc)    
    geocode.append(geocode_result)
    
# Calculate distance between each location and total distance of road trip
now = datetime.now()
totalDistance = 0
print("Your road trip route:")
print(locations[0]+" ("+str(geocode[0][0]["geometry"]["location"])+")")
for i in range(1,num):        
    directions_result = gmaps.directions(locations[i-1], locations[i], mode="driving", departure_time=now)
    leg = directions_result[0]['legs'][0]
    distance = int(leg['distance']['value']/1000)   # Divide by 1000 as distance is in meters
    time = leg['duration']['value']
    totalDistance += int(distance)
    print("  Distance to stop:",distance,"km  Distance travelled so far:",totalDistance,"km")
    print(locations[i]+" ("+str(geocode[i][0]["geometry"]["location"])+")")

print("Total distance:",totalDistance,"km")