20.times do
    title = Faker::Job.title
    description = Faker::ChuckNorris.fact
    Todo.create(title: title, description: description)
end
puts 'Done seeding'

