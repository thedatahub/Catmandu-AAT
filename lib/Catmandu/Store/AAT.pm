package Catmandu::Store::AAT;

our $VERSION = '0.01';

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

This module contains a L<store|Catmandu::Store::AAT> to lookup a I<Subject> in the L<AAT|https://www.getty.edu/research/tools/vocabularies/aat/> using its <SPARQL endpoint|http://vocab.getty.edu/sparql>.

  lookup_in_store(objectName, AAT, lang:nl)

=head1 DESCRIPTION

=head2 L<Catmandu::Store::AAT>

  lookup_in_store(
    objectName,
    AAT,
    lang: nl
  )

The C<lang> parameter is optional and defaults to I<nl>. It sets
the language of the returned I<prefLabel>. If no I<prefLabel> for the
I<Subject> exists, nothing is returned.

The store takes the C<dc:identifier> of a I<Subject> from the AAT and returns the following data:

  {
    'id'        => 'The dc:identifier of the Subject',
    'prefLabel' => 'The prefLabel in the provided language',
    'uri'       => 'The URI of the Subject'
  }

=head1 AUTHOR

Pieter De Praetere E<lt>pieter at packed.be E<gt>

=head1 COPYRIGHT

Copyright 2017- PACKED vzw

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Catmandu>

=cut
