# UFOregon
![](https://media.giphy.com/media/VbmYpyiGXt2AU/giphy.gif)


This application uses data from the National UFO Reporting Center (NUFORC) database @ http://www.nuforc.org to show on a Google Map all of the locations where a UFO sighting has been reported in the state of Oregon. Upon clicking the marker information about the different sightings will be available.

## Screenshot

![screenshot](public/img/screen_shot.png)

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

* ⌘Command T to open a new tab in the terminal and start postgres (leave it running in the background)
```
$ postgres
```
* Clone this repository in the terminal
```
$ git clone https://github.com/saschultz/UFOregon.git
```
* Make sure you have rake installed
```
$ gem install rake
```
* Navigate to the project directory
```
$ cd Desktop/UFOregon
```
* Open the project in a text editor of your choice (eg: Atom)
```
$ atom .
```
* Prepare the database
```
$ rake db:create
$ rake db:migrate
```
* In psql navigate to the oregon_sightings_development database and copy in the database file
```
$ psql

\c oregon_sightings_development

COPY ufos(sight_date, city, state, shape, duration, summary, latitude, longitude) FROM '/Users/Guest/desktop/UFOregon/raw_data/oregon_sightings_latlong.csv' DELIMITER ',' CSV;
```
* 8a. (optional) migrate data to the test database
```
$ rake db:test:prepare
```
* ⌘Command T to open another new tab in the terminal and start sinatra (leave it running in background)
```
$ ruby app.rb
```
* Navigate to localhost:4567 in a web browser of your choice

## Known Bugs
* error page on multiple words entered
* error page on mispelling of city
* error page on city not found

## Authors

Jin Camou, Dominic Brown, Sara Schultz, Dana Weiss

## License

*open source GPL & MIT*

```
Copyright (c) 2017 **Jin Camou, Dominic Brown, Sara Schultz, Dana Weiss**
```
