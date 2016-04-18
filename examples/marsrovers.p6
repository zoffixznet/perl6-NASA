use lib 'lib';
use NASA::MarsRover;

my NASA::MarsRover $rovers .= new: key => 't/key'.IO.lines[0];

use Data::Dump;
say Dump $rovers.curiosity.query: :1sol;