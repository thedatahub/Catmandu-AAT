use strict;
use warnings;
use Test::More;

use Catmandu::Fix;

my $pkg;

BEGIN {
    $pkg = 'Catmandu::Fix::aat_search';
    use_ok $pkg;
}

SKIP: {
    skip "Need network set \$ENV{RELEASE_TESTING}",2 unless $ENV{RELEASE_TESTING};

    my $record = {
        'objectName' => 'schilderingen'
    };

    my $record_lang = {
        'objectName' => 'matte paintings'
    };

    my $fixer = Catmandu::Fix->new(fixes => ['aat_search(objectName)']);
    my $fixer_lang = Catmandu::Fix->new(fixes => ['aat_search(objectName,  -lang:en)']);

    $fixer->fix($record);
    $fixer_lang->fix($record_lang);

    isa_ok($record->{'objectName'}, 'ARRAY');
    isa_ok($record_lang->{'objectName'}, 'ARRAY');
}

done_testing 3;
