#!/bin/sh
# The install page is WordPress 4.6's (assets tagged ver=4.6), with the database reachable.
set -e
page=$(curl -fsSL http://web/wp-admin/install.php)
echo "$page" | grep -q 'ver=4.6'
! echo "$page" | grep -q 'Error establishing a database connection'
