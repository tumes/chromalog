require 'spec_helper'

describe RunLog do
  
  it { should belong_to(:instrument) }
  it { should belong_to(:analytical_method) }
  it { should belong_to(:chromatographic_column) }
  it { should have_many(:calibration_levels) }
  it { should have_many(:area_counts).through(:calibration_levels) }
  
  it { should validate_presence_of(:instrument_id) }
  it { should validate_numericality_of(:instrument_id) }
  it { should allow_mass_assignment_of(:instrument_id) }
  
  it { should validate_presence_of(:analytical_method_id) }
  it { should validate_numericality_of(:analytical_method_id) }
  it { should allow_mass_assignment_of(:analytical_method_id) }
  
  it { should validate_presence_of(:chromatographic_column_id) }
  it { should validate_numericality_of(:chromatographic_column_id) }
  it { should allow_mass_assignment_of(:chromatographic_column_id) }
  
  it { should validate_presence_of(:run_date) }
  it { should allow_mass_assignment_of(:run_date) }
  
  it { should validate_presence_of(:pressure) }
  it { should allow_mass_assignment_of(:pressure) }
  
  it { should validate_presence_of(:flow_rate) }
  it { should allow_mass_assignment_of(:flow_rate) }
  
end
