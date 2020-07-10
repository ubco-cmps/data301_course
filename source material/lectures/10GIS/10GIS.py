###################################
#####       georeferencing     ####
###################################


import googlemaps
from datetime import datetime

# TODO: Replace the API key below with a valid API key. 
gmaps = googlemaps.Client(key=mykey)
# gmaps = googlemaps.Client(key='yourkey')

# Use Geocoding API to look up latitude, longitude
address = '3333 University Way, Kelowna, BC, Canada'
geocode_result = gmaps.geocode(address)

print("\n Geocoding address... \n Address:",address, "\n Coordinates:",geocode_result[0]["geometry"]["location"])


# geocode_result is a dictionary... see the keys
geocode_result[0].keys()
geocode_result[0]["geometry"].keys()

###################################
####     reverse geocoding     ####    
###################################

# Look up an address with reverse geocoding (UBC Van)
lat = 49.2683043
lon = -123.2489377
reverse_geocode_result=gmaps.reverse_geocode((lat, lon))

print("\nReverse geocoding... \n Coordinates: ",lat,lon,"\n Address:", reverse_geocode_result[0]["formatted_address"])



###################################
###     driving directions      ###
###################################

# Request driving directions between UBCO and UBCV
directions_result = gmaps.directions(address,                                      
         reverse_geocode_result[0]["formatted_address"],
         mode="driving", departure_time=datetime.now())
leg = directions_result[0]['legs'][0]
leg.keys()


print("\nDriving directions... \n Start address:",leg['start_address'], 
      "\nDestination address:",leg['end_address'],
      "\nDistance:",leg['distance']['text'], 
      "Time:",leg['duration']['text'])

# we can iterate through each intstruction:
for step in leg['steps']:
	print("Step:",step['duration']['text'],
           step['html_instructions'])





