# EERO Prometheus exporter

This docker container is just a wrapper around [eero exporter](https://github.com/brmurphy/eero-exporter).

Session File has to be stored on a persistent volume, mounted on `/data`.

First run should be done manually to generate/set session file :
```
docker run --rm -ti -v <your docker volume>:/data acaranta/eero-exporter /usr/bin/python3 /app/session_init.py
```
It will ask for you email/phone number and the received OTP code.

Then you can run the exporter :
```
docker run -d -v <your docker volume>:/data -p 9118:9118 acaranta/eero-exporter
```
And access the exported metrics via : 
```
<hostIP>:9118/metrics
```

