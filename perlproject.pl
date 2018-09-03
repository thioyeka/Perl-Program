#usr/bin/perl

open (FILE, "<Solar.txt");
my @Abdou = (<FILE>);

open (FILE1, ">Solar1.txt");
print FILE1 "\n";

foreach $l(@Abdou)
	{

	print FILE1 "$l" if $l=~m/((.)+\s){7}(-)/i;

	}

print FILE1 "\n";

foreach $l(@Abdou)
	{

	print FILE1 "$l" if $l=~s/\s(I|V|X|(-))+\s/ /;

	}

close (FILE);
open (FILE, "<Solar.txt");
my @Abdou = (<FILE>);

print FILE1 "\n";


foreach $l(@Abdou)
	{

	print FILE1 "$l" if $l=~m/\s(-)\d+/;

	}	
	

print FILE1 "\n";
foreach $l(@Abdou)
{
	print FILE1 "$l" if $l=~m/Voyager2/i;


}

print FILE1 "\n";


foreach $l(@Abdou)
{
        @b = split(" ", $l);
        @b[4] = @b[4]*86400;
        print FILE1 "@b\n";
}
  
print FILE1 "\n";
close (FILE);
close (FILE1);
