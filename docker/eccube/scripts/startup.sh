#!/bin/bash

# Create admin user
wp user update $WORDPRESS_ADMIN_USER \
  --role=administrator \
  --user_pass=$WORDPRESS_ADMIN_PASSWORD \
  --display_name="Administrator" \
  --nickname="Administrator"

# Install & activate plugins
#wp plugin install akismet --activate
#wp plugin install all-in-one-seo-pack --activate
#wp plugin install google-sitemap-generator --activate
#wp plugin install contact-form-7 --activate
#wp plugin install wp-mail-smtp --activate
#wp plugin install wp-total-hacks --activate

# Activate theme
#wp theme activate wp-base
