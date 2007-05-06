#!perl -wT
# $Id: basic.t 3256 2007-05-06 03:54:57Z claco $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More tests => 1;

    use_ok('Class::Data::Accessor');
};
