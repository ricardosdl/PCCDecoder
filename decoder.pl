use 5.010;
use strict;
use warnings;
use Path::Tiny qw(path);
use DecoderUtil;
use utf8;
binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

my $targetfilename = shift or die "Usage: $0 FILENAME";

my $targetcontent = path($targetfilename)->slurp_utf8;

my %letters_frequency = DecoderUtil::letters_frequency($targetcontent);

foreach my $l (sort {$letters_frequency{$a} <=> $letters_frequency{$b}} keys %letters_frequency) {
    printf "%s %s\n", $l, $letters_frequency{$l};
}

#my @targetcontent_only_letters = DecoderUtil::list_unique_chars($targetcontent);
#my $num_letters = @targetcontent_only_letters;
#
#foreach(@targetcontent_only_letters) {
#    say $_;
#}
#
#say "There are ", $num_letters;