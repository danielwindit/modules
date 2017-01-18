require 'spec_helper'
describe 'luci' do

  context 'with defaults for all parameters' do
    it { should contain_class('luci') }
  end
end
