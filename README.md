# Get the package #

## Build own package ##

You can compile this package with:

```
    apt install build-essential debhelper git
    git clone https://github.com/AlternC/alternc-spip/
    cd alternc-spip
    dpkg-buildpackage -us -uc
```

## From GitHub ##

You can obtain nightly and last stable package from the dedicated page : [releases page](https://github.com/AlternC/alternc-spip/releases)

## From our repository ##

You can get package from our official repository : [debian.alternc.org](https://debian.alternc.org/)

# Dependency #

You need an Apache 2.4 version at least. Previous version use a different FHS and is not compatible with this package.

# How to use #

This package supports both AlternC 3.3 and 3.5. Could be installed with any PHP version

This script deploy globally ```ecran_securite.php``` from official SPIP repository at https://git.spip.net/spip-contrib-outils/securite/ .
You can disable specifically on a directory this protection you can do a ```SetEnv  DISABLE_SPIP_ECRAN_SECU true``` in your .htaccess

## Load check ##

SPIP ecran securité provide a feature to check server load and return a 429 response. In AlternC use case this behavior is not recommended. Then we disable this feature by default.
User can restore it via ```SetEnv  ENABLE_SPIP_ECRAN_SECURITE_LOAD true``` in their local .htaccess

