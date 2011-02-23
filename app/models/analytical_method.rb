class AnalyticalMethod < ActiveRecord::Base
  belongs_to :instrument
  has_many :analytes
  
  #validates_presence_of :name, :message => "Please fill out all methods"
end
