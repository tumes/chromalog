require 'spec_helper'

describe AnalyticalMethod do
  it { should validate_presence_of(:analytes).with_message(/include at least one analyte per method/) }
end
