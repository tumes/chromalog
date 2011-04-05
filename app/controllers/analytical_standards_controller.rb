class AnalyticalStandardsController < InheritedResources::Base
  expose(:instruments) { Instrument.all }
  expose(:methods) { AnalyticalMethod.all }
  expose(:users) { User.all }
  
  def intro
    
  end
  
  def new
    @method = AnalyticalMethod.find(params[:method])
    @analytical_standard = AnalyticalStandard.new
  end
  
  def create
    create!(:notice => 'New standard logged.') { analytical_standards_path }
  end
end
