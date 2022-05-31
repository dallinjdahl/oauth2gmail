#!/bin/sh
# This expects the client ID in $1, client secret in $2, and the auth 
# code from google in $3 (see auth.sh)

id=$(cat client_id)
secret=$(cat client_secret)
token=$(cat refresh_token)
wget https://oauth2.googleapis.com/token --post-data="client_id=$id&client_secret=$secret&grant_type=refresh_token&refresh_token=$token" -O - |
	sed -En '/access_token|expires_in/{;s/"?,$//;s/.*": "?//;p;}' >access_token