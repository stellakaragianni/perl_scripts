#!usr/bin/perl
#polla uniprot==>1 fasta
while (<>)
{
if ($_=~/^AC\s{3}(.*?)\;/m)
{
print ">$1\n";
}
if ($_=~/^\s{5}(.*)/mg)
{
$line=$1;
$line=~s/\s//g;
print "$line\n";
}
}