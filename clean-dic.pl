use strict;
use warnings;
use 5.010;
use utf8;
use Text::Undiacritic qw(undiacritic);
binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

my $file_name = "pt_BR-utf-8.dic";

open(my $fh, '<:encoding(UTF-8)', $file_name) or die "Could not open $file_name: $!";

while(<$fh>) {
    chomp $_;
    my $index_slash = index $_, '/';
    if ($index_slash != -1) {
        $_ = substr $_, 0, $index_slash;
    }
    $_ = undiacritic $_;
    say uc $_;
}