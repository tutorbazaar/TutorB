namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    admin = User.create!(:name => "sridhar",
                 :email => "sridhar@tutorb.com",
                 :password => "sridhar",
                 :password_confirmation => "sridhar")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end
