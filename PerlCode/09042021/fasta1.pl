#Fasta with a lot lines==> Fasta with 1 line
$/=">"; 
 
while (<>) 
{   
  $entry=$_; 
  chop $entry; 
  $entry= ">"."$entry"; 
  $entry=~/>(.+?)\n(\C*)/g; 
  $name=$1; 
$sequence=$2; 
  $sequence=~s/\n//g; 
   
  if ($name ne "") 
  {   
    print ">$name\n$sequence\n"; 
  } 
} 