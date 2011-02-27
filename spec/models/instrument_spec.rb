require 'spec_helper'

describe Instrument do
  
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:analytical_methods).with_message(/include at least one method/) }  
  it { should have_many(:analytical_methods) }
  it { should have_many(:analytes).through(:analytical_methods) }
  
  before(:each) do
    @a = Factory(:instrument)
  end
  
  it "should ignore blank analytical methods" do
    lambda do
      @a.update_attributes!("analytical_methods_attributes" => {"0" => {}})
    end.should_not change(AnalyticalMethod, :count)
  end
  
end
