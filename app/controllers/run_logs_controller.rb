class RunLogsController < InheritedResources::Base
  before_filter :authenticate_user!
  expose(:instruments) { Instrument.all }
  expose(:methods) { AnalyticalMethod.all }
  expose(:columns) { ChromatograhpicColumn.all }

  def intro
  end
  
  def new
    @instrument = Instrument.find(params[:instrument])
    @method = AnalyticalMethod.find(params[:analytical_method])
    @column = ChromatographicColumn.find(params[:chromatographic_column])
    @run_log = RunLog.new
    @levels = []
    for i in 1..(params[:levels].to_i)
      @levels.push(i)
    end
    
    respond_to do |format|
      format.js { render :partial => "run_log_form"}
      format.html
    end
  end
  
  def create
    create!(:notice => 'New run logged.'){ run_logs_path }
  end
  
end
