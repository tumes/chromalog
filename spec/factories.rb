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

Factory.define :chromatographic_column do |column|
  column.name "Test column"
  column.instrument_id "1"
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

