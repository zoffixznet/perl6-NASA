[![Build Status](https://travis-ci.org/zoffixznet/perl6-NASA.svg)](https://travis-ci.org/zoffixznet/perl6-NASA)

# NAME

NASA::APOD - use NASA's `APOD: Astronomy Picture of the Day` API

# SYNOPSIS

```perl6
use NASA::APOD;
my NASA::APOD $apod .= new: :key<drH7437T55HSV266UJ77TxhoT>;

say "Astronomy Picture of the Day is $apod";
```
# DESCRIPTION

Fetch an *Astronomy Picture of The Day* for today or some day in the past.
Provides title, description, and link to view the image.

# METHODS

## `new`

```perl6
use NASA::APOD;
my NASA::APOD $t .= new; # use severely rate-limited keyless operation
my NASA::APOD $t .= new: :key<drH7437T55HSV266UJ77TxhoT>; # use your own API key
```

Constructs and returns a new `NASA` object. Takes one **optional**
argument: `key`. To get your API key, visit [https://api.nasa.gov/index.html#apply-for-an-api-key](). If no key is provided,
`DEMO_KEY` will be used, which is a rate-limited key provided by NASA. It allows
only 50 queries per day (30 per hour).

##

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
