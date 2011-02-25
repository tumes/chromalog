Factory.define :user do |user|
  user.name "Test User"
  user.email "user@test.com"
  user.password "testpass"
  user.password_confirmation "testpass"
end

Factory.define :analyte do |analyte|
  analyte.name "Analyte"
end

Factory.define :analytical_method do |analytical_method|
  analytical_method.name "Method"
  analytical_method.analytes [Factory(:analyte)]
end

Factory.define :instrument do |instrument|
  instrument.name "Test instrument"
  instrument.analytical_methods [Factory(:analytical_method)]
end

