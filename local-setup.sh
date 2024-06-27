#!/bin/bash

# Bring the code.
git checkout 1.0.x
git pull
ddev start
ddev composer install

# Bring the reference database.
ddev import-db --file=./database/snapshot.sql.gz

# Apply any changes that are in code and not in DB.
ddev drush deploy

ddev drush uli
