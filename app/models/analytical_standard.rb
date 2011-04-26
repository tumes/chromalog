class AnalyticalStandard < ActiveRecord::Base
  attr_accessible :analytical_method_id, :user_id, :preparation_date, :volume, :notes, :standard_amounts_attributes
  has_many :standard_amounts
  belongs_to :analytical_method
  
  accepts_nested_attributes_for :standard_amounts
  
  validates_presence_of :analytical_method_id, :user_id, :preparation_date, :volume
  validates_numericality_of :analytical_method_id, :user_id, :volume
end
