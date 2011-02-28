require 'spec_helper'

describe MaintenanceEvent do
  it { should belong_to(:instrument) }
  it { should belong_to(:user) }
  
  it { should validate_presence_of(:instrument_id) }
  it { should allow_mass_assignment_of(:instrument_id) }
  
  it { should validate_presence_of(:date) }
  it { should allow_mass_assignment_of(:date) }
  
  it { should validate_presence_of(:problem) }
  it { should allow_mass_assignment_of(:problem) }
  
  it { should validate_presence_of(:maintenance_performed) }
  it { should allow_mass_assignment_of(:maintenance_performed) }
  
  it { should validate_presence_of(:user_id) }
  it { should allow_mass_assignment_of(:user_id) }
  
  it { should validate_presence_of(:result) }
  it { should allow_mass_assignment_of(:result) }
end
