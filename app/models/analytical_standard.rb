class AnalyticalStandard < ActiveRecord::Base
  attr_accessible :analytical_method, :user, :preparation_date, :volume, :notes, :standard_amounts_attributes
  has_many :standard_amounts
  
  accepts_nested_attributes_for :standard_amounts
  
  validates_presence_of :analytical_method, :user, :preparation_date, :volume
  validates_numericality_of :volume
end
