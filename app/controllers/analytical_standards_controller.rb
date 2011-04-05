class AnalyticalStandardsController < InheritedResources::Base
  expose(:methods) { AnalyticalMethod.all }
  expose(:users) { User.all }
  def create
    create!(:notice => 'New standard logged.') { analytical_standards_path }
  end
end
