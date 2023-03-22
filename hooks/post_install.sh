#!/bin/bash

# Update Lets encrypt 
$HESTIA/bin/v-update-letsencrypt-ssl
# Enable Demo mode
$HESTIA/bin/v-change-sys-demo-mode yes
# Update templates to enable default username 
sed -i "s|autofocus|autofocus value=\"admin\"|g" $HESTIA/web/templates/pages/login/login.php
# Update templates to enable default password 
sed -i "s|autofocus|autofocus value=\"StrongSecurePassword\"|g" $HESTIA/web/templates/pages/login/login_1.php
