package XML::RSS::Liberal::Parser;
use strict;
use base qw(XML::RSS::LibXML::Parser);
use XML::Liberal;

sub _create_parser
{
    my $self = shift;
    if (!$self->{_parser}) {
        $self->{_parser} = XML::Liberal->new('LibXML');
    }
    return $self->{_parser};
}

1;

__END__

=head1 NAME

XML::RSS::Liberal::Parser

=cut