use strict;
use warnings;
use 5.010;

#utf-8 all the way down
use utf8;
binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

my $word = 'P2A3';

my ($o1, $o2, $o3, $o4) = (0, 1, 2, 3);

for(my $b1 = 65; $b1 <=90; $b1++) {
    my $l1 = $b1 + $o1++;
    
    for(my $b2 = 65; $b2 <=90; $b2++) {
        my $l2 = $b2 + $o2++;
        
        for(my $b3 = 65; $b3 <=90; $b3++) {
            my $l3 = $b3 + $o3++;
            
            for(my $b4 = 65; $b4 <=90; $b4++) {
                my $l4 = $b4 + $o4++;
                
            }
        }
    }
}