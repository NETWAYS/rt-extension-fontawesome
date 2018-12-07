# Font Awesome(tm) Icons Extension for Request Tracker

#### Table of Contents

1. [About](#about)
2. [License](#license)
3. [Support](#support)
4. [Requirements](#requirements)
5. [Installation](#installation)
6. [Configuration](#configuration)

## About

Allows you to integrate Font Awesome Icons (SVG's via JavaScript) to your RT / RT extensions.

## License

This project is licensed under the terms of the GNU General Public License Version 2.

This software is Copyright (c) 2018 by NETWAYS GmbH [support@netways.de](mailto:support@netways.de).

For the license of Font Awesome please see the included ```LICENSE.txt``` file in the vendor source.

## Support

For bugs and feature requests please head over to our [issue tracker](https://github.com/NETWAYS/rt-extension-fontawesome/issues).
You may also send us an email to [support@netways.de](mailto:support@netways.de) for general questions or to get technical support.

## Requirements

- RT 4.4.3

## Installation

Extract this extension to a temporary location.

Git clone:

    cd /usr/local/src
    git clone https://github.com/NETWAYS/rt-extension-fontawesome

Tarball download (latest [release](https://github.com/NETWAYS/rt-extension-fontawesome/releases/latest)):

    cd /usr/local/src
    wget https://github.com/NETWAYS/rt-extension-fontawesome/archive/master.zip
    unzip master.zip

Navigate into the source directory and install the extension.

    perl Makefile.PL
    make
    make install

Edit your `/opt/rt4/etc/RT_SiteConfig.pm`

Add this line:

    Plugin('RT::Extension::FontAwesome');

Clear your mason cache:

    rm -rf /opt/rt4/var/mason_data/obj

Restart your webserver.

## Configuration

No further configuration is needed. Per default **all** icons will be included. If you want, you can customize
what to include:

**$FontAwesome_Js_File**

The js file you want to include.

### Example

Include only brand icons:

```perl
Set($FontAwesome_Js_File, 'brands.min.js');
```

Include all icons uncompressed (e.g. for debug reasons):

```perl
Set($FontAwesome_Js_File, 'all.js');
```

Have a look into ```static/js/fontawesome-svg/js``` for available JavaScript files