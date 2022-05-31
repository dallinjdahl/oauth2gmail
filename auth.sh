#!/bin/sh
id=$(cat client_id)
echo Visit the following url in your web browser, follow the instructions,
echo and store the given code in a file called 'auth_code' in this directory:
echo "https://accounts.google.com/o/oauth2/v2/auth?client_id=$id&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code&scope=https://mail.google.com"

