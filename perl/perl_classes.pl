use strict;

sub Apple::paint{
print "apple is red\n";
}

Apple->paint;

package Banana;
sub colour { "yellow"};                             #zmienna domyslna?
sub paint {
    my $class = shift;
    print "$class is ", $class->colour, "\n";
}

Banana -> paint;

package Luj;
sub ogluszacz {
    my $class = shift;
    print "$class ", $class->colour, "\n";
}

package Bonus;
our @ISA = qw(Luj);                                 #dziedziczy z klasy Luj
sub colour { "BGC" }

Bonus -> ogluszacz;

package Pakol;
our @ISA = qw(Luj);
sub colour { "TV" }
sub ogluszacz {                                     #override!!
    my $class = shift;
    print "$class ", $class->colour, "\n";
    print "Lecimy tutaj\n";
    $class->SUPER::ogluszacz;                        #to samo co linijka+1 wyzej
}

Pakol -> ogluszacz; 

package Fruit;
sub describe{
    my $class = shift;
    print "$class is ", $class->colour, "\n";
}

package Apple;
our @ISA = qw(Fruit);
sub colour { "red" }

my $name = "Red Delicious";
my $apple = \$name;                                             # \$name - wskaznik, referencja
bless $apple, "Apple";                                          # wiaze referencje z klasa (??)
my $colour = $apple->colour("some", "unnecessary", "Args");
print $$apple, " is ", $colour, "\n";                           # "$$" ??

