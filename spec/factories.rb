require 'factory_girl'

Factory.define :task do |t|
  t.name 'Pet a lion'
  t.description 'Brave test'
end

Factory.define :user do |u|
  u.user_name "Pierre Coetzee"
end

