#!/bin/sh
# This expects the client ID in $1, client secret in $2, and the auth 
# code from google in $3 (see auth.sh)

wget -q https://oauth2.googleapis.com/token --post-data="client_id=$1&client_secret=$2&code=$3&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob" -O - |
	sed -n '/refresh_token/{;s/",$//;s/.*": "//;p;}'
