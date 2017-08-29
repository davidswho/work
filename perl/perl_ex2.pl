our @random_num;
our $guess;
our $n;
our $sum = 0;

for (my $i = 0; $i<10; $i++){
    @random_num[$i] = int(rand(10));
}
print @random_num;
print "\n";

while ($n<10){
print "Enter guess ". ($n+1) . ": ";
$guess = <STDIN>;
if ($guess == "quit"){
    last;
}
print "Hidden element: @random_num[$n], ";
if (@random_num[$n] eq $guess){
    print "match!\n";
    $sum++;
}else{
    print "no match\n";
}
$n++;
unless ($n==10){
print "Next guess in 5 seconds...\n";
}
#sleep(5);
}
print "Summary: $sum / 10 matches"