while (<>)
{
if ($_=~/^>(.*)/)
	{
		$name=$1;
		$seq=<>;
		if ($seq=~/(.*[^DERK]{6}[LIVMFWSTAG]{2}[LIVMFYSTAGCQ][AGS]C)/)
		{
			$x=length($1);
			$a=$a+1;
			push @table,$1;
		}
		
	}
	if($x>$max)
		{
		$max=$x;
		}
}
print "$a LIPOPROTEINS FOUND\n";
foreach $signal(@table)
{
	$i="-" x ($max-length($signal));
	$signal=$i.$signal;
	print "$signal\n";
}