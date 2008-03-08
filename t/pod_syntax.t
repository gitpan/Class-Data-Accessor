#!perl -wT
# $Id: /local/Class-Data-Accessor/t/pod_syntax.t 1369 2007-05-06T03:54:57.072053Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::Pod 1.00';
    plan skip_all => 'Test::Pod 1.00 not installed' if $@;
};

all_pod_files_ok();
