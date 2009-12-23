#!/usr/bin/perl

=head1 SNIPITS

 Perl snipits I'd rather collect than be compelled to remember.

=head1 STRINGS

=cut

sub unique {
    my @unique = keys %{ { map { $_ => 1 } @list } };
}

sub slurp {
    my $fh = shift;
    my $contents = do { undef $/; <$fh> };
    return $contents;

}

=head1 ARRAYS

=head2 Shuffling an array

=cut

my @list = qw/one two three/;
keys %{ { @list, reverse @list } };

=head1 HASHES


=head2 Sorting by value (as opposed to key)

=cut

my @sorted = sort { $word{$a} <=> $word{$b} } keys %word;

=head1 FORMATTING

=head2 Formatting Numbers with commas

=cut

my $rev_string = reverse $string;
$rev_string =~ s/(\d\d\d)(?=\d)(?!\d*\.)/$1,/g;
$string = reverse $rev_string;

=head2 Formatting a DateStamp

=cut

sub yyyymmdd {
    my @a = localtime();
    my $yyyymmdd = sprintf( "%04d%02d%02d", $a[5] + 1900, $a[4] + 1, $a[3] );
}

=head1 TESTING

=head2 Set up working environment for test.t files

=cut

BEGIN { chdir 't' if -d 't' }
use lib '../lib';
use blib;

=head1 MISC

Stuff that doesn't fit anywhere else

=head2 various ways to return true :)

"smokin': not Perl's module system, what ntb just said..."
"designers of Perl's module system need to feel pain..."
"so very ridiculous..."

=head2 Generating year's worth of org-mode style log

=cut

sub makeOrgLogForYear {
    my @days = qw/Monday Tuesday Wednesday Thursday Friday Saturday Sunday/;
    foreach $week ( 1 .. 52 ) {
        print "** Week $week\n";
        foreach $day (@days) {
            print "*** $day\n";
        }
    }
}

