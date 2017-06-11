require 'faker'

#Create Registered Applications
10.times do
    RegisteredApplication.create!(
        name: Faker::App.unique.name,
        url: Faker::Internet.unique.url
    )
end

applications = RegisteredApplication.all

# Create Events
20.times do
    Event.create!(
        registered_application: applications.sample,
        event_name: Faker::Internet.slug    
    )
end

puts "Seed finished"
puts "#{RegisteredApplication.count} applications created"
puts "#{Event.count} events created"