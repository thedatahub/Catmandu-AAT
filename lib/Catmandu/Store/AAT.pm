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

  use Catmandu::Store::AAT;

=head1 DESCRIPTION

Catmandu::Store::AAT is

=head1 AUTHOR

Pieter De Praetere E<lt>pieter.de.praetere@helptux.beE<gt>

=head1 COPYRIGHT

Copyright 2017- Pieter De Praetere

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
