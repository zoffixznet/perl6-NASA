[![Build Status](https://travis-ci.org/zoffixznet/perl6-NASA.svg)](https://travis-ci.org/zoffixznet/perl6-NASA)

# NAME

NASA::MarsRover - use NASA's `Mars Rover Photos` API

# SYNOPSIS

```perl6
use NASA::MarsRover;
my NASA::MarsRover $rovers .= new: :key<drH7437T55HSV266UJ77TxhoT>;

my $sol = $rovers.curiosity.query: :0sol;

say "See this cool landing-day photo: {}"
```
# DESCRIPTION

Access photographs from several cameras installed on the three
Mars rovers.

# METHODS

## `new`

```perl6
use NASA::APOD;
my NASA::APOD $t .= new; # use severely rate-limited keyless operation
my NASA::APOD $t .= new: :key<drH7437T55HSV266UJ77TxhoT>; # use your own API key
```

Constructs and returns a new `NASA::APOD` object. Takes one **optional**
argument: `key`. To get your API key, visit [](https://api.nasa.gov/index.html#apply-for-an-api-key). If no key is provided,
`DEMO_KEY` will be used, which is a rate-limited key provided by NASA. It allows
only 50 queries per day (30 per hour).

## Rover Methods

```perl6
    $
```

## `.ROVER.query`

```perl6
{
  cameras => {
    MAHLI  => {
      full_name => "Mars Hand Lens Imager".Str,
      id        => 24.Int,
      name      => "MAHLI".Str,
      photos    => [
        {
          id      => 86521.Int,
          img_src => "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000001000E1_DXXX.jpg".Str,
        },
        {
          id      => 86522.Int,
          img_src => "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000001000E2_DXXX.jpg".Str,
        },
      ],
      rover_id  => 5.Int,
    },
  },
  rover   => {
    cameras      => [
      {
        full_name => "Front Hazard Avoidance Camera".Str,
        name      => "FHAZ".Str,
      },
      {
        full_name => "Navigation Camera".Str,
        name      => "NAVCAM".Str,
      },
      {
        full_name => "Mast Camera".Str,
        name      => "MAST".Str,
      },
      {
        full_name => "Chemistry and Camera Complex".Str,
        name      => "CHEMCAM".Str,
      },
      {
        full_name => "Mars Hand Lens Imager".Str,
        name      => "MAHLI".Str,
      },
      {
        full_name => "Mars Descent Imager".Str,
        name      => "MARDI".Str,
      },
      {
        full_name => "Rear Hazard Avoidance Camera".Str,
        name      => "RHAZ".Str,
      },
    ],
    id           => 5.Int,
    landing_date => "2012-08-06".Str,
    max_date     => "2016-04-17".Str,
    max_sol      => 1314.Int,
    name         => "Curiosity".Str,
    total_photos => 250163.Int,
  },
}
```

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
