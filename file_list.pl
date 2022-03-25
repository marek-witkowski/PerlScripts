#!/usr/bin/env perl

use strict;
use warnings;


my  $MDfile = "README.md";
unlink($MDfile);

my @files =  <*>;

open(FH, '>', $MDfile) or die $!;

print  FH  "# Files in this folder \n";

foreach my $file (@files) {

    if (( -f $file ) && ($file ne $0))   {

        print  FH  "## " . $file . "\n";
        print  FH  "Descripion of " . $file . "\n";

    }
}

close(FH)
