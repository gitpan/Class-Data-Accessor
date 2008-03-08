#!perl -wT
# $Id: /local/Class-Data-Accessor/t/style_no_tabs.t 1369 2007-05-06T03:54:57.072053Z claco  $
use strict;
use warnings;

BEGIN {
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::NoTabs 0.03';
    plan skip_all => 'Test::NoTabs 0.03 not installed' if $@;
};

all_perl_files_ok('lib');
