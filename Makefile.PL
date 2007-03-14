# $Id: /mirror/perl/XML-RSS-Liberal/trunk/Makefile.PL 6055 2007-03-14T03:16:35.586661Z daisuke  $
#
# Copyright (c) 2006 Daisuke Maki <daisuke@endeworks.jp>
# All rights reserved.

use inc::Module::Install;

name 'XML-RSS-Liberal';
all_from 'lib/XML/RSS/Liberal.pm';
license 'perl';

requires 'XML::RSS::LibXML', '0.30';
requires 'XML::Liberal';
build_requires 'Test::More';

auto_install;
WriteAll;