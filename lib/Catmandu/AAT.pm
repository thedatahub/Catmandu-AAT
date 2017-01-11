package Catmandu::AAT;

our $VERSION = '0.03';

use strict;
use warnings;

use Catmandu::Sane;
use Moo;

1;

__END__

=encoding utf-8

=head1 NAME

=for html <a href="https://travis-ci.org/thedatahub/Catmandu-Store-AAT"><img src="https://travis-ci.org/thedatahub/Catmandu-Store-AAT.svg?branch=master"></a>

Catmandu::AAT - Retrieve and search items from the Getty AAT Thesaurus

=head1 SYNOPSIS

    # From the command line
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

    # Perform a direct match between a term and a Subject in the AAT
    aat_match(objectName, -lang:nl)

    # Perform a search for a term in the AAT
    aat_search(objectName, -lang:nl)

=head1 MODULES

=over

=item * L<Catmandu::Store::AAT>

=item * L<Catmandu::Fix::aat_match>

=item * L<Catmandu::Fix::aat_search>

=item * L<Catmandu::AAT::API>

=back

=head1 AUTHOR

Pieter De Praetere E<lt>pieter at packed.be E<gt>

=head1 COPYRIGHT

Copyright 2017- PACKED vzw

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Catmandu>
L<Catmandu::Store::AAT>
L<Catmandu::Fix::aat_search>
L<Catmandu::Fix::aat_match>

=cut
