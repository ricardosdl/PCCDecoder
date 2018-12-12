use strict;
use warnings;
use 5.010;

#utf-8 all the way down
use utf8;
binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

use Text::Undiacritic qw(undiacritic);


my $filename = 'palavras.txt';
open(my $fh, '<:encoding(UTF-8)', $filename) or die "Could not open $filename: $!";

while(my $line = <$fh>) {
    chomp $line;
    $line = undiacritic $line;#replace accented letters by unaccented ones
    #ignore words that are not 4 letters
    if (length($line) != 4) {
        next;
    }
    say uc $line;#convert to upper case
}
