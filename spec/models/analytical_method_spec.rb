require 'spec_helper'

describe AnalyticalMethod do
  it { should validate_presence_of(:name) }
  it { should allow_mass_assignment_of(:name) }
  it { should belong_to(:instrument) }
  it { should have_many(:analytes) }
  it { should have_many(:analytical_standards) }
  it { should have_many(:chromatographic_columns) }
  it { should validate_presence_of(:analytes).with_message(/include at least one analyte per method/) }
end
