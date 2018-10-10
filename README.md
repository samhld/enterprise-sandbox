# Enterprise-sandbox

Below is a diagram of what this sandbox sets up for you automatically:
<p align="center">
  <img src="https://github.com/samhld/enterprise-sandbox/blob/master/readme_images/ent-sandbox-2.png"/>
</p>

## Requirements:
* Docker on your local machine
* An active InfluxEnterprise license key

** Note: you can either a) obtain a trial license by signing up here: https://portal.influxdata.com/users/new, or b) contact sales here: https://www.influxdata.com/contact-sales/**


## To get get the cluster up and functioning as a cluster:

* Place your key in the `INFLUXDB_ENTERPRISE_LICENSE_KEY` of the variables.env file
* Run `docker-compose up -d`
* Run `chmod 777 cluster.sh`
* Run `./cluster.sh`

You should see the following output:

<p align="center">
  <img src="https://github.com/samhld/enterprise-sandbox/blob/master/readme_images/cluster.png"/>
</p>

## Chronograf ##

An instance of Chronograf should spin up in your browser automatically.  If it does not, navigate to http://localhost:8888.

You will be brought to a page like below.  Fill in Connection String with http://nginx:8086.  Name your cluster whatever you'd like.

<p align="center">
  <img src="https://github.com/samhld/enterprise-sandbox/blob/master/readme_images/chrono-config.png"/>
</p>

For reference: [Chronograf README](https://github.com/influxdata/chronograf/blob/master/README.md)



That's it!
