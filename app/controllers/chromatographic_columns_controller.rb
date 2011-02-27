class ChromatographicColumnsController < InheritedResources::Base
  def create
    create!(:notice => 'New column added.') { chromatographic_columns_path }
  end
  
  def update
    update!(:notice => 'Column successfull edited') { chromatographic_columns_path }
  end
end
