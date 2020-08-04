#! /usr/bin/bash

# ===================================================================== #
#  file: covid_tracker.sh                                               #
#  Fetch coronavirus progression data from the Free Covid19 API at      #
#  https://covid19api.com/                                              #
# ===================================================================== #

URL="https://api.covid19api.com/world/total"
res=$(curl -sf "$URL")

if [ -z "$res" ]; then
    echo " Impossible to fetch data. "
    return 1
fi

nb_confirmed=$(jq '.["TotalConfirmed"]' <<< $res)
nb_death=$(jq '.["TotalDeaths"]' <<< $res)
nb_recovered=$(jq '.["TotalRecovered"]' <<< $res)

echo "  $nb_confirmed |  $nb_death |  $nb_recovered "
