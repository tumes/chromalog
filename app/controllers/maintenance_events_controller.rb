class MaintenanceEventsController < InheritedResources::Base
  before_filter :authenticate_user!
  expose(:instruments) { Instrument.all }
  expose(:users) { User.all }
  
  def create
    create!(:notice => 'New maintenance event added.') { maintenance_events_path }
  end
  
  def update
    update!(:notice => 'Instrument successfully edited.') { maintenance_events_path }
  end
end
