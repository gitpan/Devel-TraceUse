#!perl -T

use Test::More;

plan skip_all => "These tests are for release candidate testing"
    if !$ENV{RELEASE_TESTING};

eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage"
    if $@;
plan skip_all => "No user servicable parts inside. This Kwalitee metric is a bit silly.";

all_pod_coverage_ok();
