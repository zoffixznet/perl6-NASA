use lib 'lib';

use NASA::APOD;
my NASA::APOD $nasa .= new: key => 'key'.IO.slurp;
