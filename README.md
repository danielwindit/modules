# motd

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with motd](#setup)
    * [What motd affects](#what-motd-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with motd](#beginning-with-motd)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)

## Overview

This module manages the message of the day (/etc/motd).

## Module Description


## Setup

### Beginning with motd

Building the module:
To build the RPM of the module, you will need to execute the build.sh script in
the root folder of the module.

RHN Satellite:
If you want to test this module on a machine with the standard installation
method (RHN Satellite) you need to upload it to the satellite server. See
https://platformbouwteam.atlassian.net/wiki/display/PLAT/RPM+uploaden+naar+de+satellite

Local:
If you want to test this module on a machine without the satellite, you will
need to copy the RPM to the node and localinstall it with yum.

## Usage

## Reference

* class motd
* class motd::params

## Limitations

This module is developed and tested for Red Hat Enterprise Linux 6.x only
