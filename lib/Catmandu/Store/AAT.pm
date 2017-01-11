package Catmandu::Store::AAT;

our $VERSION = '0.03';

use strict;
use warnings;

use Moo;
use Catmandu::Sane;

use Catmandu::Store::AAT::Bag;

with 'Catmandu::Store';

has lang => (is => 'ro', default => 'nl');

1;
__END__

=encoding utf-8

=head1 NAME

=for html <a href="https://travis-ci.org/thedatahub/Catmandu-Store-AAT"><img src="https://travis-ci.org/thedatahub/Catmandu-Store-AAT.svg?branch=master"></a>

Catmandu::Store::AAT - Retrieve items from the AAT

=head1 SYNOPSIS

  # From the command line
  $ catmandu export AAT --id 300033618 --lang en to YAML
  ---
  id: '300033618'
  prefLabel: paintings (visual works)
  uri: http://vocab.getty.edu/aat/300033618
  ...

  # From a Catmandu Fix
  lookup_in_store(
    objectName,    # objectName is a field containing the AAT identifier
    AAT,
    lang: nl
  )

  # From Perl code
  use Catmandu;

  my $store = Catmandu->store('AAT', lang => 'en')->bag;

  my $item = $store->get('300033618');

  print $item->{prefLabel} , "\n";  # paintings (visual works)

=head1 DESCRIPTION

A Catmandu::Store::AAT is a Perl package that can query the <AAT|https://www.getty.edu/research/tools/vocabularies/aat/>
Thesaurus using its L<SPARQL endpoint|http://vocab.getty.edu/sparql>.

This store supports only one method C<get> to retrieve an AAT record by its identifier

=head1 CONFIGURATION

=head2 lang

Optional. Set the language of record to be returned.

=head1 METHODS

=head2 new(%configuration)

Create a new Catmandu::Store::AAT

=head2 get($id)

Retrieve an AAT record given an identifier. Returns a record like:

  {
    'id'        => 'The dc:identifier of the Subject',
    'prefLabel' => 'The prefLabel in the provided language',
    'uri'       => 'The URI of the Subject'
  }

=head2 add()

Not supported

=head2 delete()

Not supported

=head2 each()

Not supported

=head1 AUTHOR

Pieter De Praetere E<lt>pieter at packed.be E<gt>

=head1 COPYRIGHT

Copyright 2017- PACKED vzw

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Catmandu>
L<Catmandu::AAT>
L<Catmandu::Fix::aat_search>
L<Catmandu::Fix::aat_match>

=cut
