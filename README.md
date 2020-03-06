This container will pull the MAC table from a PANOS based Firewall and output in JSON format.  

Meant to be short lived.

Variables APIKEY and IP variables are required.

E.G. `docker run --rm 
-e APIKEY="<PUT KEY HERE> " 
-e IP=<PANOS IP> 
 dukekautington/panwmacpull`

If you want colorized output....attach to the container terminal while it's alive

E.G. `docker run --rm -t
-e APIKEY="<PUT KEY HERE> " 
-e IP=<PANOS IP> 
 dukekautington/panwmacpull`
