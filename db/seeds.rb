# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dishes = [
  'Brathering',
  'Spinat und Rührei',
  'Pizza',
  'Gemüseeintopf',
  'Bax',
  'Hühnchen mit Gemüse und Reis']

dishes.each do |name|
  Dish.create(name: name, eaten_on: Date.today)
end
