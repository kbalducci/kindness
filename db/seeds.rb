# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create!([{first_name: "Kate"},
                        last_name: "Balducci"},
                        user_name: "kbalducci"},
                        zipcode: "78758"},
                        avatar: },
                        phone: "5127311220"},

                        ])

tags = Tag.create([{ name: 'Animals' },
                  { name: 'Environment' },
                  { name: 'Elderly' },
                  { name: 'Youth' },
                  { name: 'Monetary' },
                  { name: 'Other'}])




