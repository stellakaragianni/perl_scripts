#!/usr/bin/perl
open(SOURCE,"<C:/Users/thodo/Desktop/PerlCode/test.txt");
open(DESTINATION,">C:/Users/thodo/Desktop/PerlCode/outfile.txt");
while(<SOURCE>){
	print DESTINATION $_;
	
   if ($_ eq 'abcd') {
      print "Found it!";
   }
}

close(SOURCE);
close(DESTINATION);