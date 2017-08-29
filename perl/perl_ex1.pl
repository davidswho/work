my $usd = 2.8285;
my $eur = 3.8723;
my $gbp = 4.3290;


print "Enter an amount: ";
my $pln = <STDIN>;
printf "PLN: % .4f \n", $pln;
printf "USD: % .4f  \n", ($pln/$usd);
printf "EUR: % .4f  \n", ($pln/$eur);
printf "GBP: % .4f  \n", ($pln/$gbp);

printf "Exchange rates:
    |   PLN |   USD |   EUR |   GBP 
----+-------+-------+-------+--------
PLN |% .4f|% .4f|% .4f|% .4f
----+-------+-------+-------+--------
USD |% .4f|% .4f|% .4f|% .4f
----+-------+-------+-------+--------
EUR |% .4f|% .4f|% .4f|% .4f
----+-------+-------+-------+--------
GBP |% .4f|% .4f|% .4f|% .4f ", 
($pln/$pln), (1/$usd), (1/$eur), (1/$gbp), 
($usd/1), ($usd/$usd), ($usd/$eur), ($usd/$gbp), 
($eur/1), ($eur/$usd), ($eur/$eur), ($eur/$gbp), 
($gbp/1), ($gbp/$usd), ($gbp/$eur), ($gbp/$gbp), 