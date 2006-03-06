# $Id$
#
# Copyright (c) 2006 Daisuke Maki <dmaki@cpan.org>
# All rights reserved.

use strict;
use Module::Build;

my $class = 'Module::Build';
my $build = $class->new(
    dist_version_from => 'lib/XML/RSS/Liberal.pm',
    dist_name => 'XML-RSS-Liberal',
    requires => {
        'XML::Liberal'     => '>= 0.05',
        'XML::RSS::LibXML' => '>= 0.18',
    },
    license => 'perl',
    create_readme => 1,
    create_makefile_pl => 'traditional',
);

$build->create_build_script;