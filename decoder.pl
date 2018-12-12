use 5.010;
use strict;
use warnings;
use Path::Tiny qw(path);
use DecoderUtil;

my $targetfilename = shift or die "Usage: $0 FILENAME";

my $targetcontent = path($targetfilename)->slurp_utf8;

my @targetcontent_only_letters = DecoderUtil::list_unique_chars($targetcontent);
my $num_letters = @targetcontent_only_letters;

foreach(@targetcontent_only_letters) {
    say $_;
}

say "There are ", $num_letters;