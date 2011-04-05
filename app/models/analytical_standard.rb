class AnalyticalStandard < ActiveRecord::Base
  attr_accessible :analytical_method_id, :user_id, :preparation_date, :volume, :notes
  
  validates_presence_of :analytical_method_id, :user_id, :preparation_date, :volume
  validates_numericality_of :analytical_method_id, :user_id, :volume
end
