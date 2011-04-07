require 'spec_helper'

describe StandardAmount do
  it { should belong_to(:analytical_standard) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:batch) }  
end
