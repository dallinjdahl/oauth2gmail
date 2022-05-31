#!/bin/sh
# This expects the client ID in $1, client secret in $2, and the auth 
# code from google in $3 (see auth.sh)

wget -q https://oauth2.googleapis.com/token --post-data="client_id=$1&client_secret=$2&grant_type=refresh_token&refresh_token=$3" -O - |
	sed -n '/access_token/{;s/",$//;s/.*": "//;p;}'
