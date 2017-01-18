# luci

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with luci](#setup)
    * [What luci affects](#what-luci-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with luci](#beginning-with-luci)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module installs the luci cluster management application.

## Module Description

The cluster management application is installed on the target node, hostfile entries are
created for the client systems and the firewall port is opened to allow connections from
the client systems.

## Setup

### What luci affects
* packages: luci css
* files:    /etc/hosts
* service:  luci

### Beginning with luci

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

  if $h['profiles::clustermgr::clustermgr_present'] == 'yes' {

    if ! defined(Class['rhnchannel::params']) {
      class {'rhnchannel::params':
        password => $h['rhn_channel::params::password'],
        user     => $h['rhn_channel::params::user'],
      }
    }

    $channel = $h['rhn_channel::params::rhelrs']
    if ! defined(Rhnchannel::Channel[$channel]) {
      rhnchannel::channel {$channel:}
    }

    class{'::luci::params':
      clusternodes => $h['luci::params::clusternodes'],
      require      => Rhnchannel::Channel[$channel],
    }
    ->
    class{'::luci':}

  } # if luci present

## Reference

class luci
class luci::params
