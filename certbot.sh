#!/bin/sh

# Exit when any command fails
set -e

# Use DOMAINS from the environment, default to test.example.com if empty
CERTBOT=$(command -v certbot)
LE_EMAIL="${LE_EMAIL:-certbot.letsencrypt@example.com}"
LE_DOMAINS="${LE_DOMAINS:-test.example.com}"
ARGS=""

# Sanitize the LE_EMAIL variable
# Allow only letters, numbers, dots, hyphens, underscores, and @ symbol
LE_EMAIL=$(echo "$LE_EMAIL" | sed 's/[^a-zA-Z0-9@._-]//g')

# Split the DOMAINS variable by comma and sanitize each domain
IFS=','
set -- $LE_DOMAINS
for i do
    # Remove anything that's not a letter, number, hyphen, underscore, or dot
    sanitized_domain=$(echo "$i" | sed 's/[^a-zA-Z0-9._-]//g')
    ARGS="$ARGS -d $sanitized_domain"
done

CERTBOT_COMMAND="sh -c '$CERTBOT certonly \
                    --expand \
                    --webroot \
                    -w /tmp/acme_challenge \
                    $ARGS \
                    --text \
                    --agree-tos \
                    --email $LE_EMAIL \
                    --rsa-key-size 4096 \
                    --verbose \
                    --keep-until-expiring \
                    --preferred-challenges=http'"

# Execute the command with constructed arguments
eval "$CERTBOT_COMMAND"

