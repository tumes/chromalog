# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Chromalog::Application.initialize!

# Login security code, use to keep unwanted users out
SECURITY_CODE = "hmm"