package Vehicle;

sub name{
    my $self = shift;
    $$self;
}
sub set_colour{colour }
sub colour{$colour}
sub default_colour{"black"}
sub wheels{$wheels}
sub default_wheels{2}
sub describe {
    my $class = shift;
    print $class->name, " is " , $class->colour, " and has", $class->wheels, "\n";
}

sub build {
    my $class = shift;
    my $name = shift;
    bless $name, $class;
}


package Automobile;
our @ISA = qw(Vehicle);

sub default_colour{"silver"}
sub default_wheels{4}

sub build {
    my $class = shift;
    my $name = shift;
    bless \$name, $class;
}

my $name = Automobile->build("Lex");
print $name->name, "\n";
#print $name->colour;

print $colour->colour;
my $wheels;

