class RunLogsController < InheritedResources::Base
  before_filter :authenticate_user!
  expose(:instruments) { Instrument.all }
  expose(:methods) { AnalyticalMethod.all }
  expose(:columns) { ChromatograhpicColumn.all }

  def intro
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
    
    respond_to do |format|
      format.js { render :partial => "run_log_form"}
      format.html
    end
  end
  
  def create
    create!{ root_path }
  end
  
  def for_analytical_method_id
    @dynamic_methods = AnalyticalMethod.find(:all, :conditions => ["instrument_id = ?", params[:id]])
    respond_to do |format|
      format.json { render :json => @dynamic_methods }
    end
  end
  
  def for_chromatographic_column_id
    @dynamic_columns = ChromatographicColumn.find(:all, :conditions => ["analytical_method_id = ?", params[:id]])
    respond_to do |format|
      format.json { render :json => @dynamic_columns }
    end
  end
  
end
