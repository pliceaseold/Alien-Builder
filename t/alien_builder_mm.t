use strict;
use warnings;
use Test::More tests => 1;
use Alien::Builder::MM;

subtest basic => sub {

  my $builder = Alien::Builder::MM->new;
  
  isa_ok $builder, 'Alien::Builder';
  isa_ok $builder, 'Alien::Builder::MM';

  my %config = $builder->mm_args;
  is $config{PREREQ_PM}->{"File::ShareDir"}, "1.00", 'require File::ShsreDir = 1.00';

};