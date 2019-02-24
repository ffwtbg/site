###################
# GLUON Settings
###################
DEFAULT_GLUON_RELEASE := 0.9.7
DEFAULT_GLUON_PRIORITY := 0

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= ${DEFAULT_GLUON_PRIORITY}

# enable multidomain support
# GLUON_MULTIDOMAIN=1

GLUON_LANGS ?= en de
GLUON_WLAN_MESH ?= 11s
GLUON_REGION := eu

###################
#
###################

GLUON_FEATURES := \
        autoupdater \
        ebtables-filter-multicast \
        ebtables-filter-ra-dhcp \
	ebtables-source-filter \
        ebtables-limit-arp \
        mesh-batman-adv-15 \
        mesh-vpn-tunneldigger \
        radvd \
        respondd \
        status-page \
        web-advanced \
	web-private-wifi \
	config-mode-geo-location-osm \
        web-wizard 

# Additional packages to install on every image
GLUON_SITE_PACKAGES := \
        iwinfo \
        ff-wtbg-autoreboot \
        gluon-tunneldigger-watchdog \
        gluon-radv-filterd \
        haveged \
        respondd-module-airtime

