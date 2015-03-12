# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tags = Tag.create([{ name: 'Animals' },
                  { name: 'Environment' },
                  { name: 'Elderly' },
                  { name: 'Youth' },
                  { name: 'Monetary' },
                  { name: 'Other'}])


# taggings = Tagging.create!([{ tag_id: 1 },
#                               { tag_id: 2 },
#                               { tag_id: 3 },
#                               { tag_id: 4 },
#                               { tag_id: 5 },
#                               { tag_id: 6 }])

