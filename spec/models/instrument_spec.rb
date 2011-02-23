require 'spec_helper'

describe Instrument do
  before(:each) do
    @a = Factory(:instrument)
  end
  
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:analytical_methods) }
  
  it "should ignore blank analytical methods" do
    lambda do
      @a.update_attributes!("analytical_methods_attributes" => {"0" => {}})
    end.should_not change(AnalyticalMethod, :count)
  end
  
end
