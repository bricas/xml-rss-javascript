use inc::Module::Install 0.68;

if ( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/XML/RSS/JavaScript.pm > README' );
}

name 'XML-RSS-JavaScript';
all_from 'lib/XML/RSS/JavaScript.pm';
no_index directory => 'css';

requires 'XML::RSS' => '1.31';

requires 'Test::More';

auto_install;
WriteAll;
