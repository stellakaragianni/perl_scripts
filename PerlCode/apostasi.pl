#!/user/bin/perl

print "Give me 4 coordinates\n";
$num1=<>;
chomp $num1;
$num2=<>;
chomp $num2;
$num3=<>;
chomp $num3;
$num4=<>;
chomp $num4;
$apostasi= sqrt(((abs(num1-num2)**2)) + ((abs(num3-num4)**2)));
print "$apostasi\n";