# Example requests for Google Maps API
import googlemaps
from datetime import datetime

# TODO: Replace the API key below with a valid API key. Will not work otherwise.
gmaps = googlemaps.Client(key='yourkey')

# Use Geocoding API to look up latitude, longitude for a place
address = '3333 University Way, Kelowna, BC, Canada'
geocode_result = gmaps.geocode(address)

print("Geocoding address...")
print("Address:",address,"Coordinates:",geocode_result[0]["geometry"]["location"])

# Look up an address with reverse geocoding (UBC Vancouver)
lat = 49.2683043
lon = -123.2489377
reverse_geocode_result = gmaps.reverse_geocode((lat, lon))

print("\nReverse geocoding...")
print("Coordinates: ",lat,lon,"Address:",reverse_geocode_result[0]["formatted_address"])

# Request driving directions between UBC Okanagan and UBC Vancouver
now = datetime.now()
directions_result = gmaps.directions(address,
                                     reverse_geocode_result[0]["formatted_address"],
                                     mode="driving",
                                     departure_time=now)

print("\nDriving directions...")
leg = directions_result[0]['legs'][0]
print("Start address:",leg['start_address'],"\nDestination address:",leg['end_address'])
print("Distance:",leg['distance']['text'],"Time:",leg['duration']['text'])
i = 1
for step in leg['steps']:
    print("Step",i,":",step['duration']['text'], step['html_instructions'])
    i=i+1
