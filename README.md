# enterprise-sandbox

This is a two-command spinup of an InfluxEnterprise cluster in Docker.  The intent behind this is be a sandbox to test InfluxEnterprise cluster features and capabilities on your local machine quickly and easily.

## Requirements:
* Docker on your local machine
* An active InfluxEnterprise license key
** Note: you can either a) obtain a trial license by signing up here: https://portal.influxdata.com/users/new, or b) contact sales here: https://www.influxdata.com/contact-sales/


## Step 1:

Place your key in the `INFLUXDB_ENTERPRISE_LICENSE_KEY` of the variables.env file

## Step 2:

Run `docker-compose up -d`
Run `chmod 777 cluster.sh`
Run `./cluster.sh`

That's it!
