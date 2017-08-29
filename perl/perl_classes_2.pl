use strict;
package Fruit;
sub describe {
    my $class = shift;
    print "$class is ", $class->colour, "\n"
}

package Apple;
our @ISA = qw(Fruit);
sub colour { "red" }
sub name {
    my $self = shift;
    $$self;
}

sub named {
    my $class = shift;
    my $name = shift;
    bless \$name, $class;
}

my $apple = Apple->named("Red Delicious");
print $apple->name, " is ", $apple ->colour, "\n";

