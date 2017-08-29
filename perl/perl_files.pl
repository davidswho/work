

#open(my $ins, "<", "input.txt")
#   or die "Can't open < input.txt: $!";
#print $ins
#my $outs = <STDIN>;
#open (my $outs, ">", "output-file.txt");

#close $ins;
#close $outs;


open (my $in, "<:encoding(UTF-8)", "perl/input.txt") or die "error";

while (my $row = <$in>) {
  chomp $row;
  print "$row\n";
}

open (my $out, ">", "perl/output.txt") or die "error";
my $line = <STDIN>;
print $out $line;


close $in;
close $out;
