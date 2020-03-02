# Polybar Covid Tracker

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
