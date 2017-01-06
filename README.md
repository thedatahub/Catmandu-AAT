# NAME

<div>
    <a href="https://travis-ci.org/thedatahub/Catmandu-Store-AAT"><img src="https://travis-ci.org/thedatahub/Catmandu-Store-AAT.svg?branch=master"></a>
</div>

Catmandu::Store::AAT - Retrieve items from the AAT

# SYNOPSIS

This module contains a [store](https://metacpan.org/pod/Catmandu::Store::AAT) to lookup a _Subject_ in the [AAT](https://www.getty.edu/research/tools/vocabularies/aat/) using its [SPARQL endpoint](http://vocab.getty.edu/sparql) and a [fix](https://metacpan.org/pod/Catmandu::Fix::aat_match) to match a term to a _Subject_.

    lookup_in_store(objectName, AAT, lang:nl)

    aat_match(objectName, -lang:nl)

# DESCRIPTION

## [Catmandu::Store::AAT](https://metacpan.org/pod/Catmandu::Store::AAT)

    lookup_in_store(
      objectName,
      AAT,
      lang: nl
    )

The `lang` parameter is optional and defaults to _nl_. It sets
the language of the returned _prefLabel_. If no _prefLabel_ for the
_Subject_ in provided _lang_ exists, nothing is returned.

The store takes the `dc:identifier` of a _Subject_ from the AAT and returns the following data:

    {
      'id'        => 'The dc:identifier of the Subject',
      'prefLabel' => 'The prefLabel in the provided language',
      'uri'       => 'The URI of the Subject'
    }

## [Catmandu::Fix::aat\_match](https://metacpan.org/pod/Catmandu::Fix::aat_match)

    aat_match(
      path,
      -lang: nl
    )

A fix that performs a match between a term and a _prefLabel_ of an AAT _Subject_.

# AUTHOR

Pieter De Praetere &lt;pieter at packed.be >

# COPYRIGHT

Copyright 2017- PACKED vzw

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[Catmandu](https://metacpan.org/pod/Catmandu)
