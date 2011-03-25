require 'spec_helper'

describe ApplictationController do
  
  describe "Method testing" do
    
    describe "instrument finder" do
      
      it "should find the correct instrument" do
        @instrument = Factory(:instrument)
        @event = Factory(:maintenance_event)
        @event.find_instrument.should == @instrument
      end
    end
  end
        

end