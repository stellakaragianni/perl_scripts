%genetic_code = (
'GCA'=>'A', #Alanine
'GCC'=>'A', #Alanine
'GCG'=>'A', #Alanine
'GCT'=>'A', #Alanine
'AGA'=>'R', #Arginine
'AGG'=>'R', #Arginine
'CGA'=>'R', #Arginine
'CGC'=>'R', #Arginine
'CGG'=>'R', #Arginine
'CGT'=>'R', #Arginine
'AAC'=>'N', #Asparagine
'AAT'=>'N', #Asparagine
'GAC'=>'D', #Aspartic acid
'GAT'=>'D', #Aspartic acid
'TGC'=>'C', #Cysteine
'TGT'=>'C', #Cysteine
'GAA'=>'E', #Glutamic acid
'GAG'=>'E', #Glutamic acid
'CAA'=>'Q', #Glutamine
'CAG'=>'Q', #Glutamine
'GGA'=>'G', #Glycine
'GGC'=>'G', #Glycine
'GGG'=>'G', #Glycine
'GGT'=>'G', #Glycine
'CAC'=>'H', #Histidine
'CAT'=>'H', #Histidine
'ATA'=>'I', #Isoleucine
'ATC'=>'I', #Isoleucine
'ATT'=>'I', #Isoleucine
'TTA'=>'L', #Leucine
'TTG'=>'L', #Leucine
'CTA'=>'L', #Leucine
'CTC'=>'L', #Leucine
'CTG'=>'L', #Leucine
'CTT'=>'L', #Leucine
'AAA'=>'K', #Lysine
'AAG'=>'K', #Lysine
'ATG'=>'M', #Methionine
'TTC'=>'F', #Phenylalanine
'TTT'=>'F', #Phenylalanine
'CCA'=>'P', #Proline
'CCC'=>'P', #Proline
'CCG'=>'P', #Proline
'CCT'=>'P', #Proline
'AGC'=>'S', #Serine
'AGT'=>'S', #Serine
'TCA'=>'S', #Serine
'TCC'=>'S', #Serine
'TCG'=>'S', #Serine
'TCT'=>'S', #Serine
'ACA'=>'T', #Threonine
'ACC'=>'T', #Threonine
'ACG'=>'T', #Threonine
'ACT'=>'T', #Threonine
'TGG'=>'W', #Tryptophan
'TAC'=>'Y', #Tyrosine
'TAT'=>'Y', #Tyrosine
'GTA'=>'V', #Valine
'GTC'=>'V', #Valine
'GTG'=>'V', #Valine
'GTT'=>'V', #Valine
'TAA'=>'-', #STOP
'TAG'=>'-', #STOP
'TGA'=>'-', #STOP
);

print("Give me a seq");
$seq= <STDIN>;
$seq2=$seq;
$seq2=~tr/ATCG/TAGC/;
$seq2=reverse($seq2);
print "Forward Strand\n";
Translate($seq);
print "Reverse Strand\n";
Translate($seq2);
sub Translate{
$sub_seq=$_[0];
for($i=0;$i<=length($sub_seq)-3;$i++)
	{
	$x=substr($sub_seq,$i,3);
	if ($x eq 'ATG')
	{	
		$pos=$i+1;
		print "position $pos\n";
		for($j=$i;$j<=length($sub_seq)-3;$j=$j+3)
		{
			$y=substr($sub_seq,$j,3);
			$k=$genetic_cod
			{

print"\n";
last;
 }
print "$k";
} 
}
}
}