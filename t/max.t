

use builtin qw(max);

print "1..5\n";

print "not " unless defined &max;
print "ok 1\n";

print "not " unless max(1) == 1;
print "ok 2\n";

print "not " unless max(1,2) == 2;
print "ok 3\n";

print "not " unless max(2,1) == 2;
print "ok 4\n";

my @a = map { rand() } 1 .. 20;
my @b = sort @a;
print "not " unless max(@a) == $b[-1];
print "ok 5\n";
