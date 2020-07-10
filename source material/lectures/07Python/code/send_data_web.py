import urllib.parse
import urllib.request

# Send data using PUT to a web site
url = 'http://cosc304.ok.ubc.ca/rlawrenc/tomcat/provinceState.jsp'
headers={'User-Agent':'Mozilla/5.0 (Windows NT 6.1)'} 
# Build and encode data
values = {'country' : 'US'}
data = urllib.parse.urlencode(values)
data = data.encode('ascii')
req = urllib.request.Request(url, data, headers)
with urllib.request.urlopen(req) as response:
    page = response.read()
    print(page)