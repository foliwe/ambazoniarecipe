foliwe = User.create!(name: "Foliwe" ,email: "foliwe@example.com", password: "password")
akuma = User.create!(name: "Akuma", email: "akuma@example.com", password: "password")

3.times do
  Recipe.create!(
    name: Faker::Lorem.sentence,
    summary: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraphs,
    user_id: foliwe.id
    )
end

3.times do
  Recipe.create!(
    name: Faker::Lorem.sentence,
    summary: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraphs,
    user_id: akuma.id
    )
end

4.times do 
    Style.create!(
        name:Faker::Food.ingredient
        )
end

puts '========================================='
puts "4 users created !!"
puts "2 users created !!"
puts "6 Recipes created !!"
