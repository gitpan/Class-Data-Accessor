#!perl -w
# $Id: /local/Class-Data-Accessor/t/pod_spelling.t 1372 2008-03-08T01:16:01.089092Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::Spelling 0.11';
    plan skip_all => 'Test::Spelling 0.11 not installed' if $@;
};

set_spell_cmd('aspell list');

add_stopwords(<DATA>);

all_pod_files_spelling_ok();

__DATA__
runtime
Bowden
Raygun
isa
mst
behaviour
further
overridable
Laco
Pauley
claco
stylings
fieldspec
listref
