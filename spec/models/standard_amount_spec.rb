require 'spec_helper'

describe StandardAmount do
  it { should belong_to(:analytical_method) }
end
