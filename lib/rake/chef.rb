require "rake/chef/version"
require 'rake/chef/dsl'
require 'rake'

module Rake
  module Chef
    ::Rake::DSL.send(:include, Rake::Chef::DSL)
  end
end
