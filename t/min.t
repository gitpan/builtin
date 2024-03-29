

use builtin qw(min);

print "1..5\n";

print "not " unless defined &min;
print "ok 1\n";

print "not " unless min(9) == 9;
print "ok 2\n";

print "not " unless min(1,2) == 1;
print "ok 3\n";

print "not " unless min(2,1) == 1;
print "ok 4\n";

my @a = map { rand() } 1 .. 20;
my @b = sort { $a <=> $b } @a;
print "not " unless min(@a) == $b[0];
print "ok 5\n";
