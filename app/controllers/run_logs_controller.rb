class RunLogsController < InheritedResources::Base

  def intro
    @instruments = Instrument.all
    @methods = AnalyticalMethod.all  
    @columns = ChromatographicColumn.all  
  end
  
  def new
    @instrument = Instrument.find(params[:instrument])
    @method = AnalyticalMethod.find(params[:method])
    @column = ChromatographicColumn.find(params[:column])
    @run_log = RunLog.new
    @levels = []
    for i in 1..(params[:levels].to_i)
      @levels.push(i)
    end
  end
  
  def create
    create!{ root_path }
  end
  
  def update_method_menu
    @method = AnalyticalMethod.find(params[:search][:state])
    render :layout => false
  end
end
