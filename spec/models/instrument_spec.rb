require 'spec_helper'

describe Instrument do
  before(:each) do
    Factory(:instrument)
  end
  
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
