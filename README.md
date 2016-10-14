# ELK Demo

This little repository is linked to the following light talk: [Suivre son activité avec une stack ELK](http://bunkrapp.com/present/8tfk8o) [FR].

The aim of this repository is to have a basic and simple way to play with Kibana and some data.

This repository is inspired by the work of [deviantony/docker-elk](https://github.com/deviantony/docker-elk).

Random data have been generated thanks to [Mockaroo](https://www.mockaroo.com)

## Compose the stack

The suggested stack is composed by:
* an ElasticSearch instance which expose 2 ports: 9200 (HTTP for the Rest API) and 9300 (for the transport module)
* a Logstash instance which expose the 5000 port (TCP input to let you easily inject data)
* a Kibana instance which expose the 5601 port (HTTP for the dashboard web interface)
* a Kopf instance which expose the 80 port (HTTP for the admin web interface)


## Requirements

You just need to have:
* [docker](https://docs.docker.com/engine/installation/linux/)
* [docker-compose](https://docs.docker.com/compose/install/)


## How to use it?

It's pretty simple to launch the full stack:
```bash
cd elk-demo
sudo docker-compose up
```

Then you just need to inject data:
```bash
nc localhost 5000 < data/random_data.json
```

Finally browse on:
* http://127.0.0.1:80 to manage the created index
* http://127.0.0.1:5601 to start to play with Kibana


## Videocast

... coming soon I hope ...


## Restore a given Kibana config

... coming soon I hope ...
