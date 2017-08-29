use strict;
use warnings;
sub generate_th($$){
    my $sides = shift;
    my $th = shift;
    my @list;
    for(my $i=0; $i<$th; $i++){
        @list[$i] = int(rand($sides))+1;
    }
    return @list;
}
print "How many sides? ";
my $sides = <STDIN>;
print "How many throws? ";
my $throws = <STDIN>;
my @l = generate_th($sides, $throws);
#print "@l \n";

sub print_th {
    my @list = @_;
    for(my $i=0; $i<@list; $i++){
        print $list[$i];
        unless ($i == @list-1){
        print ", ";
        }
    }
    print "\n";
}
print_th(@l);

sub save_th {
    my $name = shift;
    my @list = @_;
    #print "$file \n";
    #print @list;
    open (my $file, ">", $name) or die "error";
    print $file "$_\n" for @list;
    close $file;

}

save_th("perl/dice_output",@l);