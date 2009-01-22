#!/usr/bin/perl
use strict;
use warnings;

sub context {
    print wantarray        ? "list"
      : defined(wantarray) ? "scalar"
      :                      "void";
    print "\n";
}

$_ = $_[ context() ];
@_ = @_[ context() ];

__END__
scalar
list
