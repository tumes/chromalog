class RunLogsController < InheritedResources::Base

  def intro
    @instruments = Instrument.all
    @methods = AnalyticalMethod.all    
  end
  
  def new
    @instruments = Instrument.all
    @methods = AnalyticalMethod.all
    @run_log = RunLog.new
    params[:levels].to_i.times{ @run_log.calibration_levels.build }
    @calibration_levels = @run_log.calibration_levels
  end
  
  def update_method_menu
    @method = AnalyticalMethod.find(params[:search][:state])
    render :layout => false
  end
end
