#!usr/bin/perl
#polla uniprot==>1 fasta (ta typwnei ola se mia seira)
$/="\/\/\n";
while (<>)
{
if ($_=~/^AC\s{3}(.*?)\;/m)
{
print ">$1\n";
}
while ($_=~/^\s{5}(.*)/mg)
{
$sequence=$1;
$sequence=~s/\s//g;
print "$sequence\n";
}
print "\n";
}