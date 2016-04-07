use lib 'lib';

use NASA;
my NASA $t .= new: key => 'key'.IO.slurp;
