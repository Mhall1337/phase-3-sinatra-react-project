puts "🌱 Seeding spices..."

Company.create(company_name: 'SpaceX')
response = RestClient.get 'https://api.spacexdata.com/v4/launches'
launches = JSON.parse(response)
launches.each do |launch|
    Launch.create(
        name: launch['name'],
        details: launch['details'],
        success: launch['success'],
        failure_notes: launch['failures'],
        flight_number: launch['flight_number'],
        company_id: 1,
    )
end


puts "✅ Done seeding!"
