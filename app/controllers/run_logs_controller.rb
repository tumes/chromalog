class RunLogsController < InheritedResources::Base

  def intro
    @instruments = Instrument.all
    @methods = AnalyticalMethod.all    
  end
  
  def update_method_menu
    @method = AnalyticalMethod.find(params[:search][:state])
    render :layout => false
  end
end
