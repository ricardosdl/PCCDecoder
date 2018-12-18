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

sub letters_frequency {
    my ($text) = @_;
    my %count;
    
    foreach my $l (split //, $text) {
        $count{$l}++;
    }
    
    return %count;
    
}

sub letter_substitute {
    open my $fh, "<:encoding(utf8)", 'frequencies.txt';#our database for substitutions
    
    my ($letter) = @_;
    
    while(my $line = <$fh>) {
        chomp $line;
        #say ' ==== ', $line, '  ======  ';
        my @data = split / /, $line;
        
        #say '----data---';
        #foreach my $datavar (@data) {
        #    print $datavar;
        #}
        #say '-----data-----';
        
        my $data_size = @data;
        #say '----data_size---';
        #say $data_size;
        #say '----data_size---';
        if ($data_size < 3) {#some letter doesn't have a substitute
            close $fh;
            return $letter;
        }
        
        #printf "%s === %s\n", $letter, $data[0];
        
        if ($letter eq $data[0]) {
            close $fh;
            return $data[2];
        }
        
        
    }
    close $fh;
    return $letter;
}

1;