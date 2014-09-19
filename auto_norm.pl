#!/usr/bin/perl -w

use utf8;
binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
use Encode;

my $usage;
{
$usage = <<"_USAGE_";
This script normalizes Sahidic Coptic text to standard spelling.

Usage:  auto_norm.pl [options] <FILE>

Options and argument:

-h              print this [h]elp message and quit
-s              use [s]ahidica Bible specific normalization rules

<FILE>    A text file encoded in UTF-8 without BOM


Examples:

Normalize a Coptic plain text file in UTF-8 encoding (without BOM):
  auto_norm.pl in_Coptic_utf8.txt > out_Coptic_normalized.txt

Copyright 2013-2014, Amir Zeldes & Caroline T. Schroeder

This program is free software. You may copy or redistribute it under
the same terms as Perl itself.
_USAGE_
}

### OPTIONS BEGIN ###
%opts = ();
getopts('hs',\%opts) or die $usage;
#help
if ($opts{h} || (@ARGV == 0)) {
    print $usage;
    exit;
}
if ($opts{s})   {$sahidica = 1;} else {$sahidica = 0;}


open FILE,"<:encoding(UTF-8)",shift or die "could not find input document";

while (<FILE>) {

 chomp;
 $line = $_;

 $line =~ s/[\|\[\]]//g; 
$line =~ s/⳯/ⲛ/g;
$line =~ s/[`̂︦︥̄⳿̣̣̇̈̇̄̈︤᷍]//g;
$line =~ s/Ⲁ/ⲁ/g;
$line =~ s/Ⲃ/ⲃ/g;
$line =~ s/Ⲅ/ⲅ/g;
$line =~ s/Ⲇ/ⲇ/g;
$line =~ s/Ⲉ/ⲉ/g;
$line =~ s/Ϥ/ϥ/g;
$line =~ s/Ⲫ/ⲫ/g;
$line =~ s/Ⲍ/ⲍ/g;
$line =~ s/Ⲏ/ⲏ/g;
$line =~ s/Ⲑ/ⲑ/g;
$line =~ s/Ⲓ/ⲓ/g;
$line =~ s/Ⲕ/ⲕ/g;
$line =~ s/Ⲗ/ⲗ/g;
$line =~ s/Ⲙ/ⲙ/g;
$line =~ s/Ⲛ/ⲛ/g;
$line =~ s/Ⲟ/ⲟ/g;
$line =~ s/Ⲝ/ⲝ/g;
$line =~ s/Ⲡ/ⲡ/g;
$line =~ s/Ⲣ/ⲣ/g;
$line =~ s/Ⲥ/ⲥ/g;
$line =~ s/Ⲧ/ⲧ/g;
$line =~ s/Ⲩ/ⲩ/g;
$line =~ s/Ⲱ/ⲱ/g;
$line =~ s/Ⲯ/ⲯ/g;
$line =~ s/Ⲭ/ⲭ/g;
$line =~ s/Ϩ/ϩ/g;
$line =~ s/Ϫ/ϫ/g;
$line =~ s/Ϣ/ϣ/g;
$line =~ s/Ϭ/ϭ/g;
$line =~ s/Ϯ/ϯ/g;
$line =~ s/̂//g;
$line =~ s/`//g;
$line =~ s/᷍//g;
$line =~ s/̣//g;


$line =~ s/(^|_)ⲓⲏⲗ(\$|_)/$1ⲓⲥⲣⲁⲏⲗ$2/g;
$line =~ s/(^|_)ⲓⲏ?ⲥ(\$|_)/$1ⲓⲏⲥⲟⲩⲥ$2/g;
$line =~ s/(^|_)ϫⲟⲓⲥ(\$|_)/$1ϫⲟⲉⲓⲥ$2/g;
$line =~ s/(^|_)ⲭⲣ?ⲥ(\$|_)/$1ⲭⲣⲓⲥⲧⲟⲥ$2/g;
$line =~ s/(^|_)ⲡⲛⲁ(\$|_)/$1ⲡⲛⲉⲩⲙⲁ$2/g;
$line =~ s/(^|_)ϩⲓⲗⲏⲙ(\$|_)/$1ϩⲓⲉⲣⲟⲩⲥⲁⲗⲏⲙ$2/g;
$line =~ s/(^|_)ⲥ[ⳁⲣ]ⲟⲥ(\$|_)/$1ⲥⲧⲁⲩⲣⲟⲥ$2/g;
$line =~ s/(^|_)ⲕⲗⲏⲣⲟⲛⲟⲙⲓ(\$|_)/$1ⲕⲗⲏⲣⲟⲛⲟⲙⲉⲓ$2/g;
$line =~ s/(^|_)ⲓⲱⲧ(\$|_)/$1ⲉⲓⲱⲧ$2/g;
$line =~ s/(^|_)ⲓⲟⲧⲉ(\$|_)/$1ⲉⲓⲟⲧⲉ$2/g;
$line =~ s/(^|_)ϩⲣⲁⲉⲓ(\$|_)/$1ϩⲣⲁⲓ$2/g;
$line =~ s/(^|_)ⲡⲏⲟⲩⲉ(\$|_)/$1ⲡⲏⲩⲉ$2/g;
$line =~ s/(^|_)ϩⲃⲏⲟⲩⲉ(\$|_)/$1ϩⲃⲏⲩⲉ$2/g;
$line =~ s/(^|_)ⲓⲉⲣⲟⲥⲟⲗⲩⲙⲁ(\$|_)/$1ϩⲓⲉⲣⲟⲩⲥⲁⲗⲏⲙ$2/g;
$line =~ s/(^|_)ⲡⲓⲑⲉ(\$|_)/$1ⲡⲉⲓⲑⲉ$2/g;
$line =~ s/(^|_)ⲡⲣⲟⲥⲕⲁⲣⲧⲉⲣⲓ(\$|_)/$1ⲡⲣⲟⲥⲕⲁⲣⲧⲉⲣⲓⲁ$2/g;

#Sahidica specific replacements
if ($sahidica == 1)
{
$line =~ s/ⲟⲉⲓ(\$|_)/ⲉⲓ/g;
$line =~ s/^([ⲡⲧⲛ])ⲉⲉⲓ/$1ⲉⲓ/g;
}

#$line =~ s/_/ /g;

print $line."\n";
}