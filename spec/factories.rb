Factory.define :user do |user|
  user.name "Test User"
  user.email "user@test.com"
  user.password "testpass"
  user.password_confirmation "testpass"
  user.security_code "1234"
  user.terms_of_service "true"
end

Factory.define :analyte do |analyte|
  analyte.name "Test analyte"
end

Factory.define :analytical_method do |analytical_method|
  analytical_method.name "Test method"
  analytical_method.analytes {|analytes| [analytes.association(:analyte)]}
end

Factory.define :instrument do |instrument|
  instrument.name "Test instrument"
  instrument.analytical_methods {|analytical_methods| [analytical_methods.association(:analytical_method)]}
end

Factory.define :chromatographic_column do |column|
  column.name "Test column"
  column.instrument_id "1"
  column.analytical_method_id "1"
  column.brand "Testco"
  column.description "Testing column"
  column.serial "100"
  column.received Date.today
  column.notes "Science!"
end

Factory.define :maintenance_event do |maintenance|
  maintenance.instrument_id "1"
  maintenance.date Date.today
  maintenance.problem "Burst into flames"
  maintenance.maintenance_performed "Dropped in bathtub"
  maintenance.user_id "1"
  maintenance.result "Soggy chromatograph"
end

