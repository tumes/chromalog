require 'spec_helper'

describe Analyte do
  it { should validate_presence_of(:name) }
  it { should belong_to(:analytical_method) }
end
