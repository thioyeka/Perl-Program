#usr/bin/perl

use strict;
use warnings;
 

open (FILE, "<Replace.txt");
open (FILE1, ">Replace1.txt");

while (<FILE>)
{

s/1/ one /ig;
s/2/ two /ig;
s/3/ three /ig;
s/4/ foure /ig;
s/5/ five /ig;
s/6/ six /ig;
s/7/ seven /ig;
s/8/ eight /ig;
s/9/ nine /ig;
s/0/ zero /ig;

print FILE1 "$_\n ";

}
close (FILE1);
close (FILE);
