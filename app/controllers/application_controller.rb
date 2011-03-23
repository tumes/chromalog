class ApplicationController < ActionController::Base
    
    def populate_instruments
      @instruments = Instrument.all
    end
    
    def populate_methods
      @methods = AnalyticalMethod.all
    end
  
end
