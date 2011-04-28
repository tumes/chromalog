class ChromatographicColumnsController < InheritedResources::Base
  before_filter :authenticate_user!
  
  def create
    create!(:notice => 'New column added.') { chromatographic_columns_path }
  end
  
  def edit
    edit! do |format|
      format.js { render :partial => "chromatographic_column_form" }
      format.html
    end
  end
  
  def update
    update!(:notice => 'Column successfully edited.') { chromatographic_columns_path }
  end
  
  def show
    show! do |format|
      format.html
      format.json { associated_columns_lookup }
    end
  end
  
  private
  
    def associated_columns_lookup
      @dynamic_columns = ChromatographicColumn.find(:all, :conditions => ["analytical_method_id = ?", params[:id]])
      render :json => @dynamic_columns
    end
  
end
