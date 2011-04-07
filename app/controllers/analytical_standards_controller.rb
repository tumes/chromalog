class AnalyticalStandardsController < InheritedResources::Base
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
  end
  
  def create
    create!(:notice => 'New standard logged.') { analytical_standards_path }
  end
end
