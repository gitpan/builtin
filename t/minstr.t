

use builtin qw(minstr);

print "1..5\n";

print "not " unless defined &minstr;
print "ok 1\n";

print "not " unless minstr('a') eq 'a';
print "ok 2\n";

print "not " unless minstr('a','b') eq 'a';
print "ok 3\n";

print "not " unless minstr('B','A') eq 'A';
print "ok 4\n";

my @a = map { pack("u", pack("C*",map { int(rand(256))} (0..int(rand(10) + 2)))) } 0 .. 20;
my @b = sort { $a cmp $b } @a;
print "not " unless minstr(@a) eq $b[0];
print "ok 5\n";
