open TRANSMEM, "transmem_proteins.swiss";
$x=<TRANSMEM>; #here goes the protein
$k= 7; #practicall the size of the window is 15


@hudrovalue =(); #array of values of hydrophobicity
%hyd =('A' => 0.100, 
      'C' => -1.420,
      'D' => 0.780,
      'E' => 0.830,
      'F' => -2.120,
      'G' => 0.330,
      'H' => -0.500,
      'I' => -1.130,
      'K' => 1.400,
      'L' => -1.180,
      'M' => -1.590,
      'N' => 0.480,
      'P' => 0.730,
      'Q' => 0.950,
      'R' => 1.910,
      'S' => 0.520,
      'T' => 0.070,
      'V' => -1.270,
      'W' => -0.510,
      'Y' => -0.210
      );

	  

for ($i=$k; $i<length ($x)-$k; $i++){ 				#reads the string and finds the central value
	$q=0;
		
		for ($j= $i-$k; $j<= $i+$k; $j++){ 			#finds the elements before and after the central value
			$a=substr($x,$j,1); 					#defining the window
		    
			$p=$hyd{$a}; 							#calculates the hydrophobicity values of every aminoacid 
			$q=$q+$p; 								#adds the hydrophobicity values of every aminoacid
		}
		
		$q=$q/(2*$k+1); 							#finds the average hydrophobicity value of a window
		$hydrovalue[$i]=$q; 						#adds to an array. Also connects the average value to the middle aminoacid
		$t=substr($x,$i,1); 						#finds the average aminoacid of a window 
		print "$i\t$t\t$hydrovalue[$i]"; 			#prints the position of an aminoacid, the middle aminoacid and its value of hydrophobicity
			print "\n";

	}		
