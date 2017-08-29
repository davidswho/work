print "Just another";

$\ = "\n";                          #robi domyslnie entery
#$_="gdgsgsd";
#$_.=$1,print$2while s/(..)(.)//;

my $scalar = 5;
my $string = "bonus";
my $seconds = "$string";

print "\n",$scalar * $scalar," and $seconds";
printf ("3: %+6.3f-% 5s\n", $scalar, $string);

my $s = "The black cat climbed the green tree";
my $z = substr $s, 14, 7, "jumped from";
print uc($z);
print lc("$s");

print length($s);
print index($s,"cat");

print ++($foo = '99');
print ++($foo = 'a0');

my $variable = <STDIN>;
print "you wrote: $variable";

use strict;
use warnings;
