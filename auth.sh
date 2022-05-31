#!/bin/sh
echo Visit the following url in your web browser:
echo "https://accounts.google.com/o/oauth2/v2/auth?client_id=$1&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code&scope=https://mail.google.com"

