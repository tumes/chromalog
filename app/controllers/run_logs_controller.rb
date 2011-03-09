class RunLogsController < InheritedResources::Base

  def intro
    @instruments = Instrument.all
    @methods = AnalyticalMethod.all    
  end
  
  def new
    @instrument = Instrument.find(params[:instrument])
    @method = AnalyticalMethod.find(params[:method])
    new!
    @levels = params[:levels].to_i.times{ @run_log.calibration_levels.build }
  end
  
  def update_method_menu
    @method = AnalyticalMethod.find(params[:search][:state])
    render :layout => false
  end
end
