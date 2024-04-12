# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Borra todos los registros existentes de la tabla de frutas
Fruit.destroy_all #WARNING

# Crea algunas frutas de ejemplo
fruits = [
  { name: 'Apple', color: 'Red', flavor: 'Sweet', weight: 150, price: 2.50, availability: true, image_url: 'apple.jpg' },
  { name: 'Banana', color: 'Yellow', flavor: 'Sweet', weight: 120, price: 1.75, availability: true, image_url: 'banana.jpg' },
  { name: 'Orange', color: 'Orange', flavor: 'Sour', weight: 200, price: 3.00, availability: true, image_url: 'orange.jpg' },
  { name: 'Strawberry', color: 'Red', flavor: 'Sweet', weight: 20, price: 0.50, availability: false, image_url: 'strawberry.jpg' }
]

# Itera sobre cada fruta y crea un nuevo registro en la base de datos
fruits.each do |fruit_params|
  Fruit.create(fruit_params)
end

puts "¡Se han creado #{Fruit.count} frutas!"
