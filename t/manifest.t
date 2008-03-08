#!perl -wT
# $Id: /local/Class-Data-Accessor/t/manifest.t 1372 2008-03-08T01:16:01.089092Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::CheckManifest 0.09';
    if($@) {
        plan skip_all => 'Test::CheckManifest 0.09 not installed';
    };
};

ok_manifest({
    exclude => ['/t/var', '/cover_db'],
    filter  => [qr/\.svn/, qr/cover/, qr/Build(.(PL|bat))?/, qr/_build/, qr/\.tmproj/],
    bool    => 'or'
});
