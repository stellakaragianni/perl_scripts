$/="\/\/\n";

while (<>)
{
    if ($_=~/^ID\s{3}([\w\d\-\_]+)?\s+.*/m)    
    { 
        print ">$1\n";
    }

    while ($_=~/^     (.*)/mg)
    {
        $line=$1;        
        $line=~s/\s//g;    
        print $line."\n";
    }
}

$/="\n";