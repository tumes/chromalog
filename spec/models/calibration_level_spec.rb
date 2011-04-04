require 'spec_helper'

describe CalibrationLevel do
  it { should belong_to(:run_log) }
  it { should have_many(:area_counts) }
  
  # it { should validate_presence_of(:run_log_id) }
  # it { should allow_mass_assignment_of(:run_log_id) }
  # it { should validate_numericality_of(:run_log_id) }
  it { should allow_mass_assignment_of(:standard_conc) }
  it { should validate_presence_of(:standard_conc) }
  it { should validate_numericality_of(:standard_conc) }

end
