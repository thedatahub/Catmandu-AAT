requires 'perl', '5.008005';

# requires 'Some::Module', 'VERSION';

on test => sub {
    requires 'Test::More', '0.96';
    requires 'Catmandu', '>=1.0304';
};

requires 'Moo';
requires 'JSON';
requires 'LWP::UserAgent';
requires 'LWP::Protocol::https';

requires 'Catmandu', '>=1.0304';
