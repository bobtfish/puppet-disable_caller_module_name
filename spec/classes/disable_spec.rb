require 'spec_helper'

require "#{File.dirname(__FILE__)}/../../lib/puppet/type/disable_caller_module_name/monkeypatch.rb"

describe 'test_disable_caller_module_name' do
  it { should compile }
end

