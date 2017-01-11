# NAME

<div>
    <a href="https://travis-ci.org/thedatahub/Catmandu-Store-AAT"><img src="https://travis-ci.org/thedatahub/Catmandu-Store-AAT.svg?branch=master"></a>
</div>

Catmandu::Store::AAT - Retrieve items from the AAT

# SYNOPSIS

    lookup_in_store(objectName, AAT, lang:nl)

# DESCRIPTION

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
