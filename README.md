[![Build Status](https://travis-ci.org/zoffixznet/perl6-NASA.svg)](https://travis-ci.org/zoffixznet/perl6-NASA)

# NAME

NASA - use NASA's APIs via Perl 6

# SYNOPSIS

```perl6
use NASA;
my NASA $t .= new: :key<drH7437T55HSV266UJ77TxhoT>;
```

# DESCRIPTION

This module lets you use APIs provided by NASA (National Aeronautics and
Space Administration). For descriptions of APIs and to obtain the API key,
see [https://api.nasa.gov/]()

# METHODS

## `new`

```perl6
use NASA;
my NASA $t .= new; # use rate-limited keyless operation
my NASA $t .= new: :key<drH7437T55HSV266UJ77TxhoT>; # use your own API key
```

Constructs and returns a new `NASA` object. Takes one **optional**
argument: `key`. To get your API key, visit [https://api.nasa.gov/index.html#apply-for-an-api-key](). If no key is provided,
`DEMO_KEY` will be used, which is a rate-limited key provided by NASA.

----

# REPOSITORY

Fork this module on GitHub:
https://github.com/zoffixznet/perl6-NASA

# BUGS

To report bugs or request features, please use
https://github.com/zoffixznet/perl6-NASA/issues

# AUTHOR

Zoffix Znet (http://zoffix.com/)

# LICENSE

You can use and distribute this module under the terms of the
The Artistic License 2.0. See the `LICENSE` file included in this
distribution for complete details.
