while (<>){

	if ($_=~/^FT\s{3}TRANSMEM\s+(\d+)\s+(\d+)\s+(.*)\./){
		
		push (@tmstart, $1);
		push (@tmend, $2);
	}
	
	if ($_=~/^\s{5}(.*)/){
		
		$x=$x.$1;
		$x=~s/\s//g;
	}
}

for ($i=0; $i<=$#tmstart; $i++){
	
	$mikos=($tmend[$i]-$tmstart[$i])+1;
	$tm=substr($x, $tmstart[$i], $mikos);
	print 'To', $i+1, 'diamembdraniko einai to:',"$tm\n";
}

