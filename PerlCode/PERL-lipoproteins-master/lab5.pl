while (<>){
	if ($_=~/^>(.*)/)
	{
		$name=$1;
		$seq=<>;
		if($seq=~/(.*[^DERK]{6}[LIVMFWSTAG]{2}[LIVMFYSTAGCQ][AGS]C)/) 
		{
			$x=length($1);
			$a=$a+1;
		}
	}
}
print "$a LIPOPROTEINS FOUND";