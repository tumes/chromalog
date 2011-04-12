require 'spec_helper'

describe ChromatographicColumn do
  subject { Factory(:chromatographic_column) }
  
  it { should belong_to(:instrument) }
  
  it { should belong_to(:analytical_method) }
  
  it { should validate_presence_of(:name) }
  it { should allow_mass_assignment_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should have_db_index(:name) }
  
  it { should validate_presence_of(:instrument_id) }
  it { should allow_mass_assignment_of(:instrument_id) }
  it { should validate_numericality_of(:instrument_id) }
  
  it { should validate_presence_of(:analytical_method_id) }
  it { should allow_mass_assignment_of(:analytical_method_id) }
  it { should validate_numericality_of(:analytical_method_id) }  
  
  it { should validate_presence_of(:brand) }
  it { should allow_mass_assignment_of(:brand) }
  
  it { should validate_presence_of(:description) }
  it { should allow_mass_assignment_of(:description) }
  
  it { should validate_presence_of(:serial) }
  it { should allow_mass_assignment_of(:serial) }
  
  it { should validate_presence_of(:received) }
  it { should allow_mass_assignment_of(:received) }
  
  it { should allow_mass_assignment_of(:notes) }

  it "should find a column's parent instrument with find_instrument" do
    @instrument = Factory(:instrument)
    @column = Factory(:chromatographic_column)
    @column.find_instrument.should == @instrument
  end
  
  it "should find a column's parent method with find_method" do
    @method = Factory(:analytical_method)
    @column = Factory(:chromatographic_column)
    @column.find_method.should == @method
  end  

end
