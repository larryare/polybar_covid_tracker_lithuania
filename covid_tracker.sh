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

echo "  $nb_confirmed | $nb_death |  $nb_recovered "
