$_="krJhruaesrltre c a cnP,ohet";
while (s/(..)(.)//){                    #substitute s/pattern/replace
    print $2;
    $_ .= $1;
}
print "\n";

$string = "Today is a good day !";
if ($string =~ /IS/i){                   #match m/pattern ; =~/pattern/ ; /pattern/ ; i - ignore upper/lower case
    print "IS found";
}else{print "No IS found";}
print "\n";

if ($string =~ /\!/){
    print "! found"
}else{print"No ! found";}
print "\n";

$string =~ s/good/bad/;                 #substitute =~ s/pattern/replace
print $string . "\n";

$string =~ s/day/night/ig;
print $string . "\n";                   #g - replace all

$abc = "abcaaccbb";

$abc =~ tr/abc/xyz/;
print $abc;
print "\n";

   $lol = "wftedskaebjgdpjgidbsmnjgc";
$lol =~ tr/abcdefghijklmnopqrstuvwxyz/oh, turtleneck Phrase Jar!/;
print $lol;
print "\n";

my $date = "21/08/2019";
my $regexp = qr!^(\d\d)[-/](\d\d)[-/](\d\d(?:\d\d)?)!;
if ($date =~ m/$regexp/)
{print "Today is $1 $2 $3" ;}
print "\n";

