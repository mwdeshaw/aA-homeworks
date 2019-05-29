# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

red_keep = House.create(address: '1 Kingsroad, Kings Landing')
storms_end = House.create(address: '1 Storm Court, Stormlands')
winterfell = House.create(address: '1 Winter is Coming Drive, Wintertown')
highgarden = House.create(address: '10 Roseroad, Reach')


bob = Person.create(name: 'Bobby B.', house_id: 1)
cersei = Person.create(name: 'Cersei', house_id: 1)
joffrey = Person.create(name: 'Joffrey', house_id: 1)

stannis = Person.create(name: 'Stannis', house_id: 2)
renly = Person.create(name: 'Renly', house_id: 2)

ned = Person.create(name: 'Ned S.', house_id: 3)
robb = Person.create(name: 'Rob S.', house_id: 3)
Arya = Person.create(name: 'Arya S.', house_id: 3)

olenna = Person.create(name: 'Olenna', house_id: 4)
mace = Person.create(name: 'Mace T.', house_id: 4)