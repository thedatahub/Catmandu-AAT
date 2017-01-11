# NAME

<div>
    <a href="https://travis-ci.org/thedatahub/Catmandu-Store-AAT"><img src="https://travis-ci.org/thedatahub/Catmandu-Store-AAT.svg?branch=master"></a>
</div>

Catmandu::Store::AAT - Retrieve items from the AAT

# SYNOPSIS

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

# DESCRIPTION

A Catmandu::Store::AAT is a Perl package that can query the <AAT|https://www.getty.edu/research/tools/vocabularies/aat/>
Thesaurus using its [SPARQL endpoint](http://vocab.getty.edu/sparql).

This store supports only one method `get` to retrieve an AAT record by its identifier

# CONFIGURATION

## lang

Optional. Set the language of record to be returned.

# METHODS

## new(%configuration)

Create a new Catmandu::Store::AAT

## get($id)

Retrieve an AAT record given an identifier. Returns a record like:

    {
      'id'        => 'The dc:identifier of the Subject',
      'prefLabel' => 'The prefLabel in the provided language',
      'uri'       => 'The URI of the Subject'
    }

## add()

Not supported

## delete()

Not supported

## each()

Not supported

# AUTHOR

Pieter De Praetere &lt;pieter at packed.be >

# COPYRIGHT

Copyright 2017- PACKED vzw

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[Catmandu](https://metacpan.org/pod/Catmandu)
[Catmandu::AAT](https://metacpan.org/pod/Catmandu::AAT)
[Catmandu::Fix::aat\_search](https://metacpan.org/pod/Catmandu::Fix::aat_search)
[Catmandu::Fix::aat\_match](https://metacpan.org/pod/Catmandu::Fix::aat_match)
