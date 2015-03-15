# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([{first_name: "Kate",
            last_name: "Balducci",
            user_name: "kbalducci",
            zipcode: "78758",
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/004/thumb/Hello.jpg?1426448326',
            phone: "5127311220",
            email: 'test@me.com',
            password: 'password'
            },

            {first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            user_name: Faker::Internet.user_name,
            zipcode: Faker::Address.zip,
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/002/thumb/Nature.jpg?1426448046',
            phone: Faker::Number.number(10),
            email: 'test2@me.com',
            password: 'password'
            },

            {first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            user_name: Faker::Internet.user_name,
            zipcode: Faker::Address.zip,
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/003/thumb/Success.jpg?1426448202',
            phone: Faker::Number.number(10),
            email: 'test3@me.com',
            password: 'password'
            },

            {first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            user_name: Faker::Internet.user_name,
            zipcode: Faker::Address.zip,
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/006/thumb/Jellyfish.jpg?1426448660',
            phone: Faker::Number.number(10),
            email: 'test4@me.com',
            password: 'password'
            },

            {first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            user_name: Faker::Internet.user_name,
            zipcode: Faker::Address.zip,
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/005/thumb/ottercams.jpg?1426448542',
            phone: Faker::Number.number(10),
            email: 'test5@me.com',
            password: 'password'
            }])

Act.create([{ title: 'Let someone go in front of you in line.' },
            { title: 'Donate Blood.' },
            { title: 'Have lunch with a stranger at a nursing home.' },
            { title: 'Become an organ donor.' },
            { title: 'Make a bird feeder.' },
            { title: 'Collect canned food for a local food bank.' },
            { title: 'Leave money in the parking meter.' },
            { title: 'Donate a teddy bear to a homeless shelter.' },
            { title: 'Coach a youth sporting team.' },
            { title: 'Use a re-usable glass water bottle.' },
            { title: 'Donate pet food to an animal shelter.' },
            ])

tags = Tag.create([{ name: 'Animals' },
                  { name: 'Environment' },
                  { name: 'Elderly' },
                  { name: 'Youth' },
                  { name: 'Monetary' },
                  { name: 'Medical' },
                  { name: 'Food' },
                  { name: 'General'}])

Tagging.create([{ act_id: 1,
                  tag_id: 8
                  },
                  { act_id: 2,
                  tag_id: 6
                  },
                  { act_id: 3,
                  tag_id: 3
                  },
                  { act_id: 4,
                  tag_id: 3
                  },
                  { act_id: 5,
                  tag_id: 1
                  },
                  { act_id: 6,
                  tag_id: 7
                  },
                  { act_id: 7,
                  tag_id: 5
                  },
                  { act_id: 8,
                  tag_id: 4
                  },
                  { act_id: 9,
                  tag_id: 4
                  },
                  { act_id: 10,
                  tag_id: 2
                  },
                  { act_id: 11,
                  tag_id: 1
                  },
                  ])




