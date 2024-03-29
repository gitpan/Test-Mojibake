
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'bin/scan_mojibake',
    'lib/Test/Mojibake.pm',
    't/00-compile.t',
    't/00-load.t',
    't/01-bad-check.t',
    't/01-self-check.t',
    't/01-test-check.t',
    't/02-bad-source.t',
    't/02-good-source.t',
    't/03-bad-pod.t',
    't/03-good-pod.t',
    't/04-bom.t',
    't/05-encode.t',
    't/06-pp-vs-xs.t',
    't/07-broken-utf8.t',
    't/author-critic.t',
    't/author-test-eol.t',
    't/bad/bad-latin1.pl_',
    't/bad/bad-latin1.pod_',
    't/bad/bad-utf8.pl_',
    't/bad/bad-utf8.pod_',
    't/bad/bom.pl_',
    't/bad/mojibake.pod_',
    't/good/Makefile.PL',
    't/good/README',
    't/good/ascii.pl',
    't/good/ascii.pod',
    't/good/latin1.pl',
    't/good/latin1.pod',
    't/good/mojibake.pl_',
    't/good/shebang',
    't/good/utf8.pl_',
    't/good/utf8.pod',
    't/release-cpan-changes.t',
    't/release-dist-manifest.t',
    't/release-distmeta.t',
    't/release-kwalitee.t',
    't/release-minimum-version.t',
    't/release-mojibake.t',
    't/release-no-tabs.t',
    't/release-pod-coverage.t',
    't/release-pod-linkcheck.t',
    't/release-pod-syntax.t',
    't/release-portability.t',
    't/release-synopsis.t',
    't/release-test-version.t',
    't/release-unused-vars.t'
);

notabs_ok($_) foreach @files;
done_testing;
