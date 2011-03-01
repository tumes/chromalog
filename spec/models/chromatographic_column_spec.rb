require 'spec_helper'

describe ChromatographicColumn do
  subject { Factory(:chromatographic_column) }
  
  it { should belong_to(:instrument) }
  
  it { should validate_presence_of(:name) }
  it { should allow_mass_assignment_of(:name) }
  
  it { should validate_presence_of(:instrument_id) }
  it { should validate_numericality_of(:instrument_id) }
  
  it { should validate_presence_of(:brand) }
  it { should allow_mass_assignment_of(:brand) }
  
  it { should validate_presence_of(:description) }
  it { should allow_mass_assignment_of(:description) }
  
  it { should validate_presence_of(:serial) }
  it { should allow_mass_assignment_of(:serial) }
  
  it { should validate_presence_of(:received) }
  it { should allow_mass_assignment_of(:received) }
  
  it { should allow_mass_assignment_of(:notes) }
  
  it { should validate_uniqueness_of(:name) }
end
