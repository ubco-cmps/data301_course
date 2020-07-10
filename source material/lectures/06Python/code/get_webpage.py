import urllib.request

# Get web page location and print
loc="http://people.ok.ubc.ca/rlawrenc/teaching/301"
site = urllib.request.urlopen(loc)
contents = site.read()
print(contents)
site.close()