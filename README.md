## Setup of StatsD
run dockerfile using docker run command



## Adding StatsD to an application
`sudo docker run -id -p 8000:8000 -p 3000:3000 -p 8125:8125/udp kamon/grafana_graphite`
 Now that StatsD is running we can install our StatsD Client for Python and add it to our script.
 First we will install the StatsD Client.  command used `sudo pip install statsd`
