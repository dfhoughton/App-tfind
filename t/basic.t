use strict;
use warnings;
use v5.10;
use Test::More;
 use FindBin;
use File::Spec;

my $tfind = File::Spec->catfile($FindBin::Bin, '..', 'bin', 'tfind');

use Capture::Tiny qw(capture_merged);

my $out = capture_merged { local @ARGV = qw(--help); do $tfind; };

say $out;

done_testing();
