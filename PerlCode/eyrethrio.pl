#!/user/bin/perl

%hash=('0134'=>'Maria T',
'1055'=>'Theodori K',
'1045'=>'Maria T',
'0135'=>'Giorgos G');
$hash{'1109'}='Kostas S';
print %hash;
@k=keys(%hash);
@v=values(%hash);
print "@k\n";
print "@v\n";
 

foreach $t(keys(%hash)){
	if ($hash{$t} eq 'Maria T'){
		print "$t\n";
	}
}