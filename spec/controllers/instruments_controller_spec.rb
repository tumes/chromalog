require 'spec_helper'

describe InstrumentsController do
  
  it "should not add blank analytical methods to the database" do
    lambda do
      @instrument = Factory(:instrument)
      @instrument.analytical_methods.create(:name => "")
      @instrument.analytical_methods.create(:name => "test")
      @instrument.save
    end.should change(AnalyticalMethod, :count).by(1)    
  end

end
