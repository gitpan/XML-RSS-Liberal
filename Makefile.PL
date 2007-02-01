# $Id$
#
# Copyright (c) 2006 Daisuke Maki <daisuke@endeworks.jp>
# All rights reserved.

use inc::Module::Install;

name 'XML-RSS-Liberal';
all_from 'lib/XML/RSS/Liberal.pm';
license 'perl';

requires 'XML::LibXML';
requires 'XML::Liberal';
build_requires 'Test::More';

auto_install;
WriteAll;