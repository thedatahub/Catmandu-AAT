package Catmandu::Store::AAT::SPARQL;

use strict;
use warnings;

use Moo;
use Catmandu::Sane;

use LWP::UserAgent;
use JSON;

has query => (is => 'ro', required => 1);
has url   => (is => 'ro', default => sub { 'http://vocab.getty.edu/sparql.json' });

has results => (is => 'lazy');
has ua      => (is => 'lazy');

sub _build_ua {
    my $self = shift;
    my $ua = LWP::UserAgent->new();
    return $ua;
}


sub _build_results {
    my $self = shift;
}


1;

__END__

=head1 DESCRIPTION

=head2 SPARQL Query

    select ?prefLabel ?id ?Subject ?scheme {
        ?Subject xl:prefLabel|xl:altLabel [xl:literalForm ?prefLabel; dct:language gvp_lang:nl] .
        ?Subject dc:identifier ?id .
        ?Subject skos:inScheme <http://vocab.getty.edu/aat/> .
        ?Subject skos:inScheme ?scheme .
        ?Subject luc:term "schildering" .
    }

=cut