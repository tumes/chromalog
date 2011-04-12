require 'spec_helper'

describe StandardAmount do
  it { should belong_to(:analytical_standard) }
  
  it { should validate_presence_of(:analytical_standard_id) }
  it { should validate_numericality_of(:analytical_standard_id) }
  it { should allow_mass_assignment_of(:analytical_standard_id) }
  
  it { should validate_presence_of(:name) }
  it { should allow_mass_assignment_of(:name) }
  
  it { should validate_presence_of(:amount) }
  it { should validate_numericality_of(:amount) }
  it { should allow_mass_assignment_of(:amount) }
  
  it { should validate_presence_of(:batch) }  
  it { should allow_mass_assignment_of(:batch) }
end
