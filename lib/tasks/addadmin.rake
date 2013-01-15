namespace :db do
  desc "Create Administrator in database"
  task addadmin :environment do
    admin = User.create!(name: "Administrator",
                         email: "youngwebking@gmail.com",
                         password: "chewydog",
                         password_confirmation: "chewydog")
    admin.toggle!(:admin)
  end
end