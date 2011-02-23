class Instrument < ActiveRecord::Base
  attr_accessible :name, :analytical_methods_attributes
  has_many :analytical_methods
  accepts_nested_attributes_for :analytical_methods, :reject_if => proc {|attributes| attributes[:name].blank?}, :allow_destroy => true

  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }
  validates_presence_of :analytical_methods
end
