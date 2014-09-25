Normalizes orthography and removes diacritics from UTF-8 Coptic.

Copyright 2013-14 Amir Zeldes, Caroline T. Schroeder.  The perl program is free software. You may copy or redistribute the script under the same terms as Perl itself.

v. 2.0 contains a parameter for normalizing the orthography in the Sahidica online version of the Coptic New Testament.

Usage:  auto_norm.pl [options] <FILE>

Options and argument:

-h              print this [h]elp message and quit
-s              use [s]ahidica Bible specific normalization rules

<FILE>    A text file encoded in UTF-8 without BOM

Examples:

Normalize a Coptic plain text file in UTF-8 encoding (without BOM):
  auto_norm.pl in_Coptic_utf8.txt > out_Coptic_normalized.txt
