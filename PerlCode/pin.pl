#!/user/bin/perl

$cp="1234";
print "Enter your pin\n";
$pin=<>;
chomp($pin);

if ($cp==$pin){
	print "welcome to your account\n";
}else{
	print "DDAENG!";
}