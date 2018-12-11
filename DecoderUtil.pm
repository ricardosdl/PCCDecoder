package DecoderUtil;
use 5.010;
use strict;
use warnings;

sub list_unique_chars {
    my ($original_text, $ignored) = @_;
    #$ignored ||= /[^\d\w]/p;
    #$ignored ||= qr/[^\d\w]/p;
    
    say $ignored;
    
    my $new_text = $original_text =~ s/$ignored//rg;
    
    return $new_text;
    
}

1;