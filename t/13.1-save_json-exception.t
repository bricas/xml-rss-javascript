use Test::More;

use strict;
use warnings;

BEGIN {
	eval "use Test::Exception";
	plan skip_all => "Test::Exception required" if $@;
	plan tests => 4;

	use_ok( 'XML::RSS::JavaScript' );
}

my $rss = XML::RSS::JavaScript->new();
isa_ok( $rss, 'XML::RSS::JavaScript' );

$rss->channel( 
    'title'	    => 'title',
    'link'	    => 'link',
    'description'   => 'description'
);

$rss->add_item(
    'title'	    => 'title1',
    'link'	    => 'link1',
    'description'   => 'desc1'
);

$rss->add_item(
    'title'	    => 'title2',
    'link'	    => 'link2',
    'description'   => 'desc2'
);

throws_ok { $rss->save_json; } qr/You must pass in a filename/, 'save_json (no file)';
throws_ok { $rss->save_json( 't' ); } qr/Cannot open file/, "save_json (can't write file)";