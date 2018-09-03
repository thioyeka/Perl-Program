#usr/bin/perl
use warnings;


open (FILE, "<Electricity.txt");
open (FILE1, ">Electricity1.txt");

while (<FILE>)
	{

	$_ =~ s/[",""""".""\-"")""("":""?""!"]+//g;
	push(@Abdou, split(" ", $_));
	}

print FILE1 "Words========================================================\n";
@s = sort { lc ($a) cmp lc ($b)} @Abdou;

foreach $l(@s)
	{
	print FILE1 "$l \t\t\t Abdou Thioye's Project\n";
	}

print FILE1 "\n\n";

print FILE1 "Words=====================================================\n";

@s = sort { $a cmp $b } @Abdou;
foreach $l(@s)
	{
	print FILE1 "$l\t\t\t Abdou Thioye's Project\n";
	}

print FILE1 "\n\n";
print FILE1 "Frec\tWords==================================================\n";

my %Abdou = (@Abdou);

foreach $az(@Abdou)
	{
	$th{$az}++;
	}

foreach $key (sort {$th{$b} <=> $th{$a}} keys %Abdou)	
	{
	print FILE1 "$th{$key}\t$key \t\t\t Abdou Thioye's Project \n";
	}

print FILE1 "\n\n";
print FILE1 "Frec\tWords==================================================\n";


foreach $key (sort {$th{$b} <=> $th{$a} or "\L$a" cmp "\L$b"} keys %Abdou)		{
	print FILE1 "$th{$key}\t$key\t\t\t Abdou Thioye's Project\n"; 
	}
print FILE1 "\n";
close(FILE);
close(FILE1);
