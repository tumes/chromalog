class InstrumentsController < InheritedResources::Base
  before_filter :authenticate_user!
  
  def create
    create!(:notice => 'New instrument created.') { instruments_path }
  end
end
