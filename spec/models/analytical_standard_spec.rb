require 'spec_helper'

describe AnalyticalStandard do
  it { should allow_mass_assignment_of(:analytical_method_id) }
  it { should validate_presence_of(:analytical_method_id) }
  it { should validate_numericality_of(:analytical_method_id) }
  
  it { should allow_mass_assignment_of(:user_id) }
  it { should validate_presence_of(:user_id) }
  it { should validate_numericality_of(:user_id) }
  
  it { should allow_mass_assignment_of(:preparation_date) }
  it { should validate_presence_of(:preparation_date) }
  
  it { should allow_mass_assignment_of(:volume) }
  it { should validate_presence_of(:volume) }
  it { should validate_numericality_of(:volume) }
  
  it { should allow_mass_assignment_of(:notes) }
end
