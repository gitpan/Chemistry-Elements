# $Id: compile.t 1637 2005-05-25 00:19:32Z comdog $
BEGIN {
	@classes = qw( Chemistry::Elements );
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile" unless use_ok( $class );
	}

