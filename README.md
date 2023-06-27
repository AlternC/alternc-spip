# Get the package #

## Build own package ##

You can compile this package with:

```
    apt install build-essential debhelper git
    git clone https://github.com/AlternC/alternc-spip/
    cd alternc-spip
    dpkg-buildpackage -us -uc
```

## From github ##

You can obtain nightly and last stable package from the dedicated page : [releases page](https://github.com/AlternC/alternc-spip/releases)

## From our repository ##

In progress. Is not actually available.


# Dependency #

You need an apache 2.4 version at least. Previous version use an differrent FHS and is not compatible with this package.  

# How to use #

This package supports both Alternc 3.3 and 3.5. Could be install with any php version

This script deploy globaly ecran_securite.pihp from official repository at https://git.spip.net/spip-contrib-outils/securite/ . 
You can disable specificly on a directory this protection you can do a ```SetEnv  DISABLE_SPIP_ECRAN_SECU true``` in your .htaccess  

