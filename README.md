# Polybar Covid Tracker V2

## How is this fork different?

- Different API provider
- Change `URL="https://disease.sh/v3/covid-19/countries/YOURCOUNTRYCODE?strict=true"`, so that `YOUROWNCOUNTRY` is some code from [ISO3166 country list](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes). If you need an example, it's already preconfigured to lt (Lithuania) in the [covid_tracker.sh](covid_tracker.sh) script.

## Synopsis

A simple polybar module tracking coronavirus progression through the world.

## Installation

First clone this repository where you store your polybar scripts

``` git clone git@github.com:HauctoPuce/polybar_covid_tracker.git ```

Set the environment variable `POLYBAR_SCRIPT` as the path to the folder in
which you cloned this repo OR edit the file `covid_module.bar` and edit the line :

``` exec = "YOUR/PATH/TO/covid_tracker.sh" ```

You can import `covid_module.bar` in your polybar configuration file and
inherit from the module `covid_tracker` or copy the content of the file
directly into your polybar configuration.
