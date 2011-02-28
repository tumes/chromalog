class MaintenanceEventsController < InheritedResources::Base
  def create
    create!(:notice => 'New maintenance event added.') { maintenance_events_path }
  end
  
  def update
    update!(:notice => 'Instrument successfully edited.') { maintenance_events_path }
  end
end
