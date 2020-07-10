import urllib

# Google search with explicit web request
url = "http://www.google.com/search?hl=en&q=data+analysis"
headers={'User-Agent':'Mozilla/5.0 (Windows NT 6.1)'} 
request = urllib.request.Request(url,None,headers) 
response = urllib.request.urlopen(request)
data = response.read()
data = data.decode()  # Convert from Unicode to ASCII
print(data)
request.close()