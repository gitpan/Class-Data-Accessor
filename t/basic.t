#!perl -wT
# $Id: /local/Class-Data-Accessor/t/basic.t 1369 2007-05-06T03:54:57.072053Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More tests => 1;

    use_ok('Class::Data::Accessor');
};
