# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Jim Martin"
  user.email                 "tjmartin4@gmail.com"
  user.password              "tobydog"
  user.password_confirmation "tobydog"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end
