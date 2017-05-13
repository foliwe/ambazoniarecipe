foliwe = User.create!(name: "Foliwe" ,email: "foliwe@live.com", password: "password")
clovis = User.create!(name: "Akuma", email: "clovisnzodom@outlook.com", password: "password")

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
    user_id: clovis.id
    )
end

4.times do 
    Style.create!(
        name:Faker::Food.ingredient
        )
end

puts '========================================='
puts "4 styles created !!"
puts "2 users created !!"
puts "6 Recipes created !!"
