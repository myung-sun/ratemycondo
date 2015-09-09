# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


links = []

links << Link.create(name: 'BayView', streetaddress: "1529 West Pender St", regionaladdress: 'Vancouver', averageprice: "1100", built: "2002", suites:"236", floors:"28", :bedroom => ["studio","1bdr","2bdr"], :amenities => ["gym", "sauna"])
links << Link.create(name: 'Silhouette', streetaddress: "9888 Cameron Street", regionaladdress: 'Burnaby', averageprice: "1175",built: "2009", suites:"503", floors:"37", :bedroom => ["1bdr","2bdr","3bdr"], :amenities => ["gym", "pool", "sauna", "hottub"])
links << Link.create(name: 'Eastern House', streetaddress: "1515 Eastern Ave", regionaladdress: 'North Vancouver',averageprice: "1200",built: "1982", suites:"73", floors:"13", :bedroom => ["1bdr","2bdr"], :amenities => ["gym"])
links << Link.create(name: 'The Ave', streetaddress: "528 Rochester Ave", regionaladdress: 'Coquitlam',averageprice: "1078",built: "1998", suites:"117", floors:"6", :bedroom => ["studio","1bdr","2bdr","3bdr"], :amenities => ["gym"])
links << Link.create(name: 'DRAKE', streetaddress: "600 Drake Ave", regionaladdress: 'Vancouver',averageprice: "1177",built: "1994", suites:"192", floors:"24", :bedroom => ["studio","1bdr","2bdr","3bdr"], :amenities => ["gym", "pool", "sauna", "hottub"])
links << Link.create(name: 'EVERGREEN', streetaddress: "3007 Glen Drive", regionaladdress: 'Coquitlam',averageprice: "1700",built: "2015", suites:"195", floors:"30", :bedroom => ["1bdr","2bdr"], :amenities => ["gym"])
links << Link.create(name: 'Espana1', streetaddress: "689 Abbott Street", regionaladdress: 'Vancouver',averageprice: "1300",built: "2009", suites:"454", floors:"37", :bedroom => ["studio","1bdr","2bdr","3bdr"], :amenities => ["gym", "pool", "sauna", "hottub"])
links << Link.create(name: 'Spectrum3', streetaddress: "131 Regiment Square", regionaladdress: 'Vancouver', averageprice: "1350",built: "2007", suites:"211", floors:"30", :bedroom => ["studio","1bdr","2bdr","3bdr"], :amenities => ["gym", "pool", "sauna", "hottub"])
links << Link.create(name: 'Spectrum1', streetaddress: "111 West Georgia", regionaladdress: 'Vancouver',averageprice: "1050",built: "2007", suites:"443", floors:"35", :bedroom => ["studio","1bdr","2bdr","3bdr"], :amenities => ["gym", "pool", "sauna", "hottub"])
links << Link.create(name: 'Spectrum2', streetaddress: "668 Citadel Parade", regionaladdress: 'Vancouver',averageprice: "1150",built: "2007", suites:"443", floors:"31", :bedroom => ["studio","1bdr","2bdr","3bdr"], :amenities => ["gym", "pool", "sauna", "hottub"])


# Adminuser information
admin = User.create!(
  email: "admin@rmc.com", password: "asdfqwer", password_confirmation: "asdfqwer", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"
)
admin.add_role :admin

# Testuser information
users = []
users << User.create(email: "test1@rmc.com", password: "12341234", password_confirmation: "12341234", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")
users << User.create(email: "test2@rmc.com", password: "12341234", password_confirmation: "12341234", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")

comments = []
comments << Comment.create(user_id: 1, link_id: 1, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 1, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 1, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 1, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 2, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 2, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 2, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 2, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 3, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 3, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 3, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 3, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 4, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 4, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 4, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 4, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 5, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 5, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 5, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 5, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 6, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 6, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 6, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 6, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 7, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 7, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 7, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 7, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 8, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 8, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 8, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 8, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 9, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 9, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 9, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 9, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 1, link_id: 10, body: "Testing123", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 10, body: "Okay", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
comments << Comment.create(user_id: 2, link_id: 10, body: "Very good", created_at: "2015-08-10 08:57:28.710065", updated_at: "2015-08-10 08:57:28.710065" )
comments << Comment.create(user_id: 3, link_id: 10, body: "Nicee apartment", created_at: "2015-08-09 08:57:28.710065", updated_at: "2015-08-09 08:57:28.710065" )
