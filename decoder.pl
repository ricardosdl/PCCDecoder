use 5.010;
use strict;
use warnings;
use Path::Tiny qw(path);
use lib '.';#to load our local libraries
use DecoderUtil;
use utf8;
binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

my $targetfilename = shift or die "Usage: $0 FILENAME";

my $targetcontent = path($targetfilename)->slurp_utf8;

my %letters_frequency = DecoderUtil::letters_frequency($targetcontent);

#list the letters frequencies from most frequent to less
#foreach my $l (sort {$letters_frequency{$b} <=> $letters_frequency{$a}} keys %letters_frequency) {
#    printf "%s %s\n", $l, $letters_frequency{$l};
#}

#say DecoderUtil::letter_substitute('9');

open my $fh, "<:encoding(utf8)", $targetfilename;
while(my $line = <$fh>) {
    chomp $line;
    my @letters = split //, $line;
    foreach my $l(@letters) {
        print DecoderUtil::letter_substitute($l);
    }
    say '';#just a new line
}