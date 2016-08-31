auto_norm V2.0.0
This script normalizes Sahidic Coptic text to standard spelling.

Usage:  auto_norm.pl [options] <FILE>

Options and argument:

  * -h              print this [h]elp message and quit
  * -s              use [s]ahidica Bible specific normalization rules
  * -t              use [t]able containing previous normalizations (first column is diplomatic text, last column is normalized)

<FILE>    A text file encoded in UTF-8 without BOM


Examples:

Normalize a Coptic plain text file in UTF-8 encoding (without BOM):
  * auto_norm.pl in_Coptic_utf8.txt > out_Coptic_normalized.txt
  * auto_norm.pl -t norm_table.tab in_Coptic_utf8.txt > out_Coptic_normalized.txt

Copyright 2013-16 Amir Zeldes, Caroline T. Schroeder.  The Perl program is free software. You may copy or redistribute the script under the same terms as Perl itself.

Additional material copyright 2013-16 Amir Zeldes, Caroline T. Schroeder: this is free software distributed under the GNU General Public license v. 3. http://www.gnu.org/licenses/gpl.html. You are welcome to distribute it under the conditions outlined in the license.