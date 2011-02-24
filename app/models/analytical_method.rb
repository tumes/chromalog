class AnalyticalMethod < ActiveRecord::Base
  belongs_to :instrument
  has_many :analytes
  accepts_nested_attributes_for :analytes, :reject_if => proc {|attributes| attributes[:name].blank?}, :allow_destroy => true
  
  
end
