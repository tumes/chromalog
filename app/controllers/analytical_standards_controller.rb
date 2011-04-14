class AnalyticalStandardsController < InheritedResources::Base
  before_filter :authenticate_user!
  expose(:instruments) { Instrument.all }
  expose(:methods) { AnalyticalMethod.all }
  expose(:users) { User.all }
  
  def intro
    
  end
  
  def new
    @method = AnalyticalMethod.find(params[:method])
    @analytes = @method.analytes
    @analytical_standard = AnalyticalStandard.new
    @method.analytes.count.times{ @analytical_standard.standard_amounts.build }
    
    respond_to do |format|
      format.js { render :partial => "analytical_standard_form"}
      format.html
    end
  end
  
  def create
    create!(:notice => 'New standard logged.') { analytical_standards_path }
  end
end
