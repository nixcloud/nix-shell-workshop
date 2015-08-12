#!/usr/bin/env perl
use strict;
use warnings;
use WWW::Curl::Easy;

$|=1;

my $curl = WWW::Curl::Easy->new;

$curl->setopt(CURLOPT_HEADER,1);
$curl->setopt(CURLOPT_URL, 'http://www.cpan.org/src/5.0/perl-5.18.2.tar.gz');
$curl->setopt(CURLOPT_NOPROGRESS,0);
$curl->setopt(CURLOPT_PROGRESSFUNCTION, sub { my ( $easy, $dltotal, $dlnow, $ultotal, $ulnow, $uservar ) = @_; print join(' ', @_[1..4]), "\n"; return 0; } );

# A filehandle, reference to a scalar or reference to a typeglob can be used here.
open my $fh, '>', 'perl-5.18.2.tar.gz' or die "$!\n";
$curl->setopt(CURLOPT_WRITEDATA,$fh);

# Starts the actual request
my $retcode = $curl->perform;

# Looking at the results...
if ($retcode == 0) {
        print("Transfer went ok\n");
        my $response_code = $curl->getinfo(CURLINFO_HTTP_CODE);
        # judge result and next action based on $response_code
} else {
        # Error code, type of error, error message
        print("An error happened: $retcode ".$curl->strerror($retcode)." ".$curl->errbuf."\n");
}
