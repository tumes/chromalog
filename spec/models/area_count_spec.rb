require 'spec_helper'

describe AreaCount do
  it { should belong_to(:calibration_level) }
  
  it { should validate_presence_of(:calibration_level_id) }
  it { should allow_mass_assignment_of(:calibration_level_id) }
  it { should validate_numericality_of(:calibration_level_id) }
  
  it { should validate_presence_of(:area) }
  it { should allow_mass_assignment_of(:area) }
  it { should validate_numericality_of(:area) }
end
