#!/usr/bin/env perl

use Config::Tiny;
use strict;
use utf8;
use warnings;

my $path   = './config.ini';
my $ini    = Config::Tiny->read($path);
my $master = $ini->{'master'};

$ini = undef;

print sprintf(
    '[client]\\nhost=%s\\nport=%d\\ndatabase=%s\\nuser=%s\\npassword=%s\\n',
    $master->{'host'},
    $master->{'port'},
    $master->{'database'},
    $master->{'user'},
    $master->{'password'},
);

exit 0;