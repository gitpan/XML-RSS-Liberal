# $Id: Liberal.pm 1 2006-03-06 05:09:29Z daisuke $
#
# Copyright (c) 2006 Daisuke Maki <dmaki@cpan.org>
# All rights reserved.

package XML::RSS::Liberal;
use strict;
use base qw(XML::RSS::LibXML);
use vars qw($VERSION);
$VERSION = '0.01';

my $LoadedParser = 0;
sub _create_parser
{
    my $self = shift;

    if (!$LoadedParser) {
        require XML::RSS::Liberal::Parser;
        $LoadedParser++;
    }

    if (! $self->{_parser}) {
        $self->{_parser} = XML::RSS::Liberal::Parser->new('LibXML');
    }

    return $self->{_parser};
}


1;

__END__

=head1 NAME

XML::RSS::Liberal - XML::RSS With A Liberal Parser

=head1 SYNOPSIS

  use XML::RSS::Liberal;
  my $rss = XML::RSS::Liberal->new;
  $rss->parsefile('rss.xml');

  # See XML::RSS::LibXML for details

=head1 DESCRIPTION

XML::RSS::Liberal is a subclass of XML::RSS::LibXML, for those of you who
want to parse broken RSS files (as they often are). It uses XML::Liberal as
its core parser, and therefore whatever broken XML you provided, as long
as XML::Liberal can tolerate it.

=head1 SEE ALSO

L<XML::RSS::LibXML|XML::RSS::LibXML>
L<XML::Liberal>

=head1 AUTHORS

Daisuke Maki E<lt>dmaki@cpan.orgE<gt>, Tatsuhiko Miyagawa E<lt>miyagawa@bulknews.netE<gt>

=cut