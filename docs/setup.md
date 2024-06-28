# Set up

You will need [ddev](https://ddev.com/get-started/) to work on the project.

You need to bring all the code first, and then the database. We will use
`stage_file_proxy` for the files.

## Short version

Set up the project on your local machine from scratch.
**You might lose existing work if you already have it**.
```
./local-setup.sh
```

## Long version

### Bring the code

Bring the latest code from the default branch:
```
git checkout 1.0.x
git pull
ddev start
ddev composer install
```

### Bring the database

Work from a known snapshot:
```
ddev import-db --file=./database/snapshot.sql.gz
ddev drush deploy
```

### Bring _just_ the latest changes to my local copy

Just pull the latest version of the code and apply it to your copy.
```
git checkout 1.0.x
git pull
ddev composer install
ddev drush deploy
```

---

## How was the first installation done

The following was done during the first set up and is no longer needed.

Some of the installation steps were taken from here:
[#3404467](https://www.drupal.org/project/la_eu/issues/3404467).

It was done via drush, like this:
```
ddev drush si -y --account-name=admin --account-pass=admin
ddev drush en -y la_eu_default_content
ddev drush pmu -y default_content
ddev launch
```
