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
            password: 'password',
            bio: "I want to make a difference by helping other people! I know that the smallest of acts can help brighten someone's day. My goal is to do 1 random act of kindness everyday. I am most interested in volunteering at The Humane Society as well as with Environmental issues."
            },

            {first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            user_name: Faker::Internet.user_name,
            zipcode: Faker::Address.zip,
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/002/thumb/Nature.jpg?1426448046',
            phone: Faker::Number.number(10),
            email: 'test2@me.com',
            password: 'password',
            bio: "If you have a lemon, make lemonade. Begin to be now what you will be hereafter. Begin difficult things while they are easy. A thousand-mile journey begins with one step."
            },

            {first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            user_name: Faker::Internet.user_name,
            zipcode: Faker::Address.zip,
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/003/thumb/Success.jpg?1426448202',
            phone: Faker::Number.number(10),
            email: 'test3@me.com',
            password: 'password',
            bio: 'Why not go out on a limb? That is where the fruit is Nothing is so exhausting as indecision, and nothing is so futile.'
            },

            {first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            user_name: Faker::Internet.user_name,
            zipcode: Faker::Address.zip,
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/006/thumb/Jellyfish.jpg?1426448660',
            phone: Faker::Number.number(10),
            email: 'test4@me.com',
            password: 'password',
            bio: 'Imagine you only have one year to live. What important things would you be doing? How would you be allotting your time to accomplish the most you could? This exercise is one method of going after your priorities. The way to be safe is never to be secure.'
            },

            {first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            user_name: Faker::Internet.user_name,
            zipcode: Faker::Address.zip,
            avatar: 'http://kbjsinstaclone.s3.amazonaws.com/users/avatars/000/000/005/thumb/ottercams.jpg?1426448542',
            phone: Faker::Number.number(10),
            email: 'test5@me.com',
            password: 'password',
            bio: 'Make the most of today. Translate your good intentions into actual deeds. One machine can do the work of fifty ordinary men. No machine can do the work of one extraordinary man.'
            }])

Act.create([{ title: 'Let someone go in front of you in line.',
            user_id: 2 },
            { title: 'Donate Blood.' },
            { title: 'Have lunch with a stranger at a nursing home.',
            user_id: 2 },
            { title: 'Become an organ donor.',
            user_id: 2 },
            { title: 'Make a bird feeder.',
            user_id: 2 },
            { title: 'Collect canned food for a local food bank.',
            user_id: 2 },
            { title: 'Leave money in the parking meter.',
            user_id: 2 },
            { title: 'Donate a teddy bear to a homeless shelter.',
            user_id: 2 },
            { title: 'Coach a youth sporting team.',
            user_id: 2 },
            { title: 'Use a re-usable glass water bottle vs a disposable water bottle.',
            user_id: 2 },
            { title: 'Donate pet food to an animal shelter.',
            user_id: 2 },
            ])
Service.create([{ title: 'Foster With The Humane Society',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/002/medium/AHS.jpg?1426457447',
                  zipcode: '78752',
                  description: 'Sometimes, animals aren’t yet ready for our adoption program—like animals under eight weeks old. Sometimes, animals get injured and need special care. Or, our shelter is filled to capacity. That’s when our Foster Care program volunteers swoop in to save the day.',
                  requirement: 'First, you need to attend a Foster Care Orientation. The orientation will allow you to learn everything you need to know about caring for a foster animal. Sign up now by emailing fostercare@austinhumanesociety.org',
                  user_id: 2
                  },
                  { title: 'Help Clean Lady Bird Lake',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/011/medium/Lake2.jpg?1426461180',
                  zipcode: '78701',
                  description: 'While Lady Bird Lake tops many people’s list of places to take visitors, it also tops the list of places about which Keep Austin Beautiful receives trash complaint calls. Nine watersheds (Eanes, Barton, West Bouldin, East Bouldin, Blunn, Harpers Branch, Johnson, Shoal, and Waller) flow into the lake, and after every storm an increase in trash on the lake’s surface is apparent as trash washes from the streets --> storm drains --> creeks --> lake. Over the years, Keep Austin Beautiful has regularly organized cleanups of the lake, and thousands of volunteers have pitched in to pick up trash.',
                  requirement: 'Must be 18 or older. Go to http://www.keepaustinbeautiful.org/ladybirdlake for more info.',
                  user_id: 2
                  },
                  { title: 'Meals on Wheels',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/004/medium/Meals.jpg?1426458340',
                  zipcode: '78702',
                  description: 'Our community assistance services include home delivered meals for seniors and others with disabilities. Aside from the meal delivery program, Meals on Wheels and More offers "And More" programs designed to keep people healthy and living in their own homes.',
                  requirement: 'Must be 18 years or older, have a valid driving license and have access to transportation. For more information, visit http://www.mealsonwheelsandmore.org. Volunteer orientation for Meal Delivery Program is every Thursday 12:15p.m. at our central kitchen 3227 E. 5th St. 78702. You must attend an orientation before you start meal delivery. Other volunteer opportunities are also available at the website.',
                  user_id: 2
                  },
                  { title: 'Big Brother/Big Sister of Austin',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/005/medium/Big.jpg?1426458966',
                  zipcode: '78721',
                  description: 'Being a Big Brother or Big Sister is one of the most enjoyable things you’ll ever do, and one of the most fulfilling. You have the opportunity to help shape a child’s future for the better by empowering them to achieve. And the best part is, it’s actually a lot of fun. You and your Little can share the kinds of activities you already like to do.',
                  requirement: 'Fill out the volunteer application on http://www.bigmentoring.org. Also see the site for more details.',
                  user_id: 2
                  },
                  { title: 'Go Fund Me',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/006/medium/fund.jpeg?1426459170',
                  zipcode: 'Anywhere',
                  description: 'The beauty of GoFundMe is that it allows campaign organizers to invite others to take part in their story. Just as we share parts of our lives on Facebook, we also want to share our dreams, pursuits, celebrations and challenges online with crowdfunding. People will always be eager to support others they care about. GoFundMe removes the physical barriers traditionally associated with receiving financial support from the people in our lives.',
                  requirement: 'Go to gofundme.com and start donating today!',
                  user_id: 2
                  },
                  { title: 'Run/Walk to Break the Silence on Ovarian Cancer',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/007/medium/Nocc.png?1426459776',
                  zipcode: '78758',
                  description: 'Join the Austin Chapter of the National Ovarian Cancer Coalition for its annual Run/Walk. Help raise money and help support those who are fighting Ovarian Cancer or have won their battle and help remember those who lost their fight to Ovarian Cancer.',
                  requirement: 'For questions contact austintx@ovarian.org. Go to http://www.ovarian.org/ to learn more or to join a team.',
                  user_id: 2
                  },
                  { title: 'Capital Area Food Bank, Austin',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/010/medium/cap3.jpg?1426460241',
                  zipcode: '78745',
                  description: 'Volunteers are the heart and soul of the Food Bank. They bring our mission to life. Our volunteers ensure only the safest food leaves our warehouse, keep mobile food pantry lines running smoothly and share our mission at community events throughout the year. Join the 17,000 volunteers who gave a bit of their time last year to make a difference in someone else’s life.',
                  requirement: 'Sign up to volunteer at https://www.austinfoodbank.org/get-involved/volunteer.',
                  user_id: 2
                  },
                  { title: 'Pets 90210',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/010/medium/pets.jpeg?1427298528',
                  zipcode: '90210',
                  description: 'Pets 90210 believes that shelter pets are perfect pets. Come help animals get adopted, spend time with the cats and dogs, or volunteer at our pet adoption sites to help showcase our perfect pets.',
                  requirement: 'If you would like to volunteer, please contact bcrowe@kenquest.com or call Bill Crowe at 310-887-7070',
                  user_id: 2 },
                  { title: 'Camp Arrowhead',
                  photo: 'http://kbjsinstaclone.s3.amazonaws.com/services/photos/000/000/011/medium/camp.jpg?1427299125',
                  zipcode: 01760,
                  description: 'Located in Natick, MA on the wooded shores of Lake Cochituate, Camp Arrowhead offers a six-week day camp and one-week residential camp that serves children and adults with special needs. Since 1958, our campers have enjoyed a warm and caring environment where their individual needs are met, while they learn skills to help promote sociability and independence.',
                  requirement: 'Volunteering at Camp Arrowhead is a truly rewarding experience.  If you will be 14 years or older by the end of summer 2015 and would like the opportunity to volunteer, please consider obtaining an application for the summer at our website: http://camparrowheadnatick.com/volunteers/',
                  user_id: 2 }
            ])

Tag.create([{ name: 'Animals' },
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
                  { service_id: 1,
                        tag_id: 1 },
                  { service_id: 2,
                        tag_id: 2 },
                  { service_id: 3,
                        tag_id: 3 },
                  { service_id: 4,
                        tag_id: 4 },
                  { service_id: 5,
                        tag_id: 5 },
                  { service_id: 6,
                        tag_id: 6 },
                  { service_id: 7,
                        tag_id: 7 },
                  { service_id: 8,
                        tag_id: 1 },
                  { service_id: 9,
                        tag_id: 4 }
                  ])




