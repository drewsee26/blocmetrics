require 'faker'
Event.destroy_all
RegisteredApplication.destroy_all

#Create Registered Applications
10.times do
    RegisteredApplication.create!(
        name: Faker::App.unique.name,
        url: Faker::Internet.unique.url
    )
end

applications = RegisteredApplication.all

# Create Events   
applications.each do
    rand(1..4).times do
        Event.create!(
            registered_application: applications.sample,
            event_name: Faker::Internet.slug
        )
    end
end

events = Event.all

puts "Seed finished"
puts "#{RegisteredApplication.count} applications created"
puts "#{Event.count} events created"