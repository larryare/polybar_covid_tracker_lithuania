#! /usr/bin/bash

# ===================================================================== #
#  file: covid_tracker.sh                                               #
#  Fetch coronavirus progression data from the Free Covid19 API at      #
#  https://covid19api.com/                                              #
# ===================================================================== #

URL="https://disease.sh/v3/covid-19/countries/lt?strict=true"
res=$(curl -sf "$URL")

if [ -z "$res" ]; then
    echo " Impossible to fetch data. "
    return 1
fi

nb_confirmed=$(jq '.["cases"]' <<< $res)
nb_death=$(jq '.["deaths"]' <<< $res)
nb_recovered=$(jq '.["recovered"]' <<< $res)
nb_todayCases=$(jq '.["todayCases"]' <<< $res)
nb_todayDeaths=$(jq '.["todayDeaths"]' <<< $res)
nb_todayRecovered=$(jq '.["todayRecovered"]' <<< $res)

echo "  $nb_confirmed (+$nb_todayCases) | $nb_death (+$nb_todayDeaths) |  $nb_recovered (+$nb_todayRecovered) "
