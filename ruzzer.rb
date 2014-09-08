#!/usr/bin/env ruby

require 'English'

$LOAD_PATH.unshift(File.join(File.expand_path(File.dirname(__FILE__)), './lib'))
$ROOT_DIR = File.expand_path('..', __FILE__)

require 'ruzzer'

Ruzzer::Framework.start(:console)


