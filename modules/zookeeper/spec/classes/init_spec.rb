require 'spec_helper'
describe 'yapstone_zookeeper' do

  context 'with defaults for all parameters' do
    it { should contain_class('yapstone_zookeeper') }
  end
end
