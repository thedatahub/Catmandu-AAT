# NAME

<div>
    <a href="https://travis-ci.org/thedatahub/Catmandu-Store-AAT"><img src="https://travis-ci.org/thedatahub/Catmandu-Store-AAT.svg?branch=master"></a>
</div>

Catmandu::AAT - Retrieve and search items from the Getty AAT Thesaurus

# SYNOPSIS

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

# MODULES

- [Catmandu::Store::AAT](https://metacpan.org/pod/Catmandu::Store::AAT)
- [Catmandu::Fix::aat\_match](https://metacpan.org/pod/Catmandu::Fix::aat_match)
- [Catmandu::Fix::aat\_search](https://metacpan.org/pod/Catmandu::Fix::aat_search)
- [Catmandu::AAT::API](https://metacpan.org/pod/Catmandu::AAT::API)

# AUTHOR

Pieter De Praetere &lt;pieter at packed.be >

# COPYRIGHT

Copyright 2017- PACKED vzw

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[Catmandu](https://metacpan.org/pod/Catmandu)
[Catmandu::Store::AAT](https://metacpan.org/pod/Catmandu::Store::AAT)
[Catmandu::Fix::aat\_search](https://metacpan.org/pod/Catmandu::Fix::aat_search)
[Catmandu::Fix::aat\_match](https://metacpan.org/pod/Catmandu::Fix::aat_match)
