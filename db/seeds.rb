# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

admin_email = ENV.fetch("ADMIN_EMAIL", "andrius@foon.local")
admin_password = ENV.fetch("ADMIN_PASSWORD", "changeme123")

User.find_or_create_by!(email_address: admin_email) do |user|
  user.password = admin_password
end

puts "Admin user ready: #{admin_email}"
