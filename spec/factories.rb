Factory.define :user do |user|
  user.name "Test User"
  user.email "user@test.com"
  user.password "testpass"
  user.password_confirmation "testpass"
end

Factory.define :instrument do |instrument|
  instrument.name "Test instrument"
end
