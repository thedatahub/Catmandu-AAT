use strict;
use Test::More;

my @pkgs = qw (
    Catmandu::Store::AAT
    Catmandu::Store::AAT::Bag
    Catmandu::Store::AAT::API
    Catmandu::Store::AAT::SPARQL
);

require_ok $_ for @pkgs;

done_testing 4;
