#!/usr/bin/env perl

use strict;
use warnings;

my @files =  <*>;
my  $MDfile = "README.md";


open(FH, '>', $MDfile) or die $!;

print  FH  "# Files in this folder \n";

foreach my $file (@files) {

    if ( -f $file )  {

        print  FH  "## " . $file . "\n";
        print  FH  "Descripion of " . $file . "\n";

    }
}

close(FH)
