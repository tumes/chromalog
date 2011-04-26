class InstrumentsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to :html
  respond_to :js, :only => :index
  
  def create
    create!(:notice => 'New instrument created.') { instruments_path }
  end
  
  def update
    update!(:notice => 'Instrument successfully edited.') { instruments_path }
  end
  
  def show
    show! do |format|
      format.html
      format.js { associated_methods_lookup }
    end
  end
  
  private 
  
    def associated_methods_lookup
      @dynamic_methods = AnalyticalMethod.find(:all, :conditions => ["instrument_id = ?", params[:id]])
      render :json => @dynamic_methods
    end
end
