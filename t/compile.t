# $Id: compile.t,v 1.1 2005/05/25 00:19:31 comdog Exp $
BEGIN {
	@classes = qw( Chemistry::Elements );
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile" unless use_ok( $class );
	}

