use strict;

use Module::Build;

my $build = Module::Build->new(
	module_name        => 'XML::RSS::JavaScript',
	dist_author        => 'Brian Cassidy <bricas@cpan.org>',
	license            => 'perl',
	create_readme      => 1,
	create_makefile_pl => 'traditional',
	requires           => {
		'XML::RSS'   => 0.9,
	},
	build_requres      => {
		'Test::More' => 0,
	}
);

$build->create_build_script;