# UFOregon

This application uses data from the National UFO Reporting Center (NUFORC) database @ http://www.nuforc.org to show on a Google Map all of the locations where a UFO sighting has been reported in the state of Oregon. Upon clicking the marker information about the different sightings will be available.

* View the site [LIVE](https://uforegon.herokuapp.com/)

![screenshot](public/img/screen_shot2.png)

## Primary technologies used

* Ruby
* Sinatra
* ActiveRecord
* Postgres
* Google Maps API
* Javascript
* HTML
* CSS
* Bootstrap

### User Stories

As a user, I want to see a map of Oregon.
As a user, I want to search for a city in Oregon to see its reported UFO sightings.
As a user, I want to see more information about the sightings that have been reported there.
As a user, I want to see an indicator that shows which city's sighting information I am currently viewing with a marker on the map.

## Specifications

| Behavior | Input | Output |
|----------|:-----:|:------:|
| view map of Oregon  | user navigates to home page | map of Oregon loads with a marker indicating the center of the map |
| enter a city name to see a marker for that city | "Portland" | marker drops on Portland |
| click UFO marker for a city to see more details | click UFO on Portland | A list of all of the descriptions of each unique sighting in that city shows below the map, and a display window on the marker shoes the city name, coordinates, and number of sightings |

## Prerequisites

* [Git](https://git-scm.com/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](https://github.com/rails/rails)
* [Google maps for Javascript Api key](https://developers.google.com/maps/documentation/javascript/)

## Setup/Installation

* make sure postgres is currently running by opening a terminal (or cmd/powershell on win) and starting the postgres process OR run postgres as a service
* note that you may have to specify a user
```bash
$ postgres
```
* Clone this repository in the terminal
```bash
$ git clone https://github.com/umitosan/UFOregon.git
```
* Make sure you have rake installed
```bash
$ gem install rake
```
* Navigate to the project directory
```bash
$ cd Desktop/UFOregon
```
* Prepare the database
```bash
$ rake db:create
$ rake db:migrate
```
* (optional) migrate data to the test database
```
$ rake db:test:prepare
```
* Open psql and navigate to the oregon_sightings_development database
```bash
$ psql
```
```sql
\c oregon_sightings_development
```
* copy the database file to local psql database
1. _(MAC example)_
```sql
\copy ufos(sight_date, city, state, shape, duration, summary, latitude, longitude) FROM '/Users/[your_user_name]/desktop/UFOregon/raw_data/oregon_sightings_latlong.csv' DELIMITER ',' CSV;
```
2. _(PC example)_
```sql
\copy ufos(sight_date, city, state, shape, duration, summary, latitude, longitude) FROM 'C:/Users/[your_user_name]/Desktop/UFOregon/raw_data/oregon_sightings_latlong.csv' DELIMITER ',' CSV;
```
* open another terminal window (or cmd/powershell window) and start the Sinatra server.  Leave the windows open to continue serving the webapp.
```bash
$ ruby app.rb
```
* Navigate to [localhost:4567](http://localhost:4567) in a web browser of your choice

## Known Bugs
* no knows bugs at this time

## Authors
Jin Camou, Dominic Brown, Sara Schultz, Dana Weiss

## License

*open source GPL & MIT*

Copyright (c) 2017 _**Jin Camou, Dominic Brown, Sara Schultz, Dana Weiss**_

![](https://media.giphy.com/media/VbmYpyiGXt2AU/giphy.gif)
