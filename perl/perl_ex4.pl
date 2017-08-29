use lib "C:/Users/ezgolda/Documents/Workspace";
require perl::perl_module_ex4;

print "How many sides? ";
my $sides = <STDIN>;

print "How many throws? ";
my $throws = <STDIN>;

my @l = generate_th($sides, $throws);
print_th(@l);
save_th("perl/dice_output_ex4",@l);