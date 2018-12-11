package DecoderUtil;
use 5.010;
use strict;
use warnings;
use List::MoreUtils qw(uniq);

sub list_unique_chars {
    my ($original_text, $ignored) = @_;
    
    $ignored ||= qr/[^\d\w]/p;#will match everything that is not a letter or number
    
    my $new_text = $original_text =~ s/$ignored//rg;
    
    my @all_chars = split(//, $new_text);
    my @unique_chars = uniq(@all_chars);
    
    return @unique_chars;
    
}

1;