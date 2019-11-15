User.destroy_all
Petplace.destroy_all
Appointment.destroy_all
Review.destroy_all

user1 = User.create!(first_name: "Montgomery", last_name: "Burns", email: "mburns@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Drogon", pet_type: "Dog", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573555175/petpal/burns_vwuzh1.jpg")
user2 = User.create!(first_name: "Milhouse", last_name: "Van Houten", email: "mvanhouten@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Viserion", pet_type: "Dog", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573768818/petpal/Milhouse_Van_Houten_copy_zzjkfh.jpg")
user3 = User.create!(first_name: "Nelson", last_name: "Muntz", email: "nmuntz@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Rhaegal", pet_type: "Cat", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573768818/petpal/Nelson-Muntz-image-nelson-muntz-36388753-1000-1000_cyqjys.png")
user4 = User.create!(first_name: "Sideshow", last_name: "Sideshow", email: "sbob@gmail.com", role: "Pet Sitter", password: "123456", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573556819/petpal/bob_gudnny.jpg")
user5 = User.create!(first_name: "Homer", last_name: "Simpsons", email: "hsimpsons@gmail.com", role: "Pet Sitter", password: "123456", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573768818/petpal/homer-simpson_md1nxr.jpg")

puts "Users created"

petplace1 = Petplace.create(name: "Cypress Creek", details: "To alcohol! The cause of, and solution to, all of life's problems. If you pray to the wrong god, you might just make the right one madder and madder. Life is just one crushing defeat after another until you just wish Flanders was dead.", address: "Calle Linares 20, Madrid", price: 30, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/Doggie-Daycare-Header_fwimkb.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/How-to-Start-an-Indoor-Dog-Park-1_wjgogi.jpg", user: user4)
petplace2 = Petplace.create(name: "Moe's Tavern", details: "If you pray to the wrong god, you might just make the right one madder and madder. To alcohol! The cause of, and solution to, all of life's problems.", address: "Calle de Sta Engracia 37, Madrid", price: 50, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491410/petpal/dog-daycare-pic1_sth8ej.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/Playground_ilhvo2.jpg", user: user4)
petplace3 = Petplace.create(name: "Springfield Courthouse", details: "Trust me, Bart, it's better to walk in on both your parents than on just one of them. Oh, loneliness and cheeseburgers are a dangerous mix.", address: "Paris", price: 80, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573556974/petpal/Happy-Dogs-rainforest-themed-indoor-playground-Photo-credit-Happy-Dog-via-Facebook_fotr6n.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/Happy_Dog_Balestier_Dog_Care-L_vl0sbk.jpg", user: user4)
petplace4 = Petplace.create(name: "KBBL Broadcasting", details: "Life is just one crushing defeat after another until you just wish Flanders was dead. Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Life is just one crushing defeat after another until you just wish Flanders was dead.", address: "Berlin", price: 100, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491212/petpal/ladogworks-indoor-dog-park_wy77tu.jpg", user: user4)
petplace5 = Petplace.create(name: "Barney's Bowl-A-Rama", details: "I'm not normally a praying man, but if you're up there, please save me, Superman!. If you pray to the wrong god, you might just make the right one madder and madder. Oh, loneliness and cheeseburgers are a dangerous mix.", address: "Chamberi Madrid", price: 20, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491212/petpal/ladogworks-indoor-dog-park_wy77tu.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/Doggie-Daycare-Header_fwimkb.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/How-to-Start-an-Indoor-Dog-Park-1_wjgogi.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491410/petpal/dog-daycare-pic1_sth8ej.jpg", user: user5)
petplace6 = Petplace.create(name: "Pimento Grove", details: "It takes two to lie: one to lie and one to listen. If you pray to the wrong god, you might just make the right one madder and madder. To alcohol! The cause of, and solution to, all of life's problems.", address: "Las Tablas Madrid", price: 60, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/Happy_Dog_Balestier_Dog_Care-L_vl0sbk.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/Doggie-Daycare-Header_fwimkb.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573769300/petpal/How-to-Start-an-Indoor-Dog-Park-1_wjgogi.jpg,https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491410/petpal/dog-daycare-pic1_sth8ej.jpg", user: user5)

puts "Petplaces created"

appointment1 = Appointment.create!(start_date: "2019-11-13", end_date: "2019-11-16", status: "pending", user: user1, petplace: petplace1, created_at: "2019-11-13 10:22:00", updated_at: "2019-11-13 10:22:00")
appointment2 = Appointment.create!(start_date: "2019-11-14", end_date: "2019-11-16", status: "pending", user: user2, petplace: petplace2, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")
appointment3 = Appointment.create!(start_date: "2019-11-16", end_date: "2019-11-17", status: "pending", user: user3, petplace: petplace4, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")
appointment4 = Appointment.create!(start_date: "2019-11-17", end_date: "2019-11-20", status: "pending", user: user1, petplace: petplace4, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")
appointment5 = Appointment.create!(start_date: "2019-11-19", end_date: "2019-11-21", status: "pending", user: user3, petplace: petplace5, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")
appointment6 = Appointment.create!(start_date: "2019-11-19", end_date: "2019-11-21", status: "pending", user: user2, petplace: petplace4, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")
appointment7 = Appointment.create!(start_date: "2019-11-19", end_date: "2019-11-21", status: "pending", user: user1, petplace: petplace3, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")
appointment8 = Appointment.create!(start_date: "2019-11-19", end_date: "2019-11-21", status: "pending", user: user3, petplace: petplace1, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")

puts "Appointments created"

review1 = Review.create!(rating: 5, description: "It was fantastic for my pet", appointment: appointment1)
review2 = Review.create!(rating: 1, description: "My pet is now pregnant, terrible", appointment: appointment2)
review3 = Review.create!(rating: 3, description: "Good service", appointment: appointment3)
review4 = Review.create!(rating: 4, description: "I loved it, my pet was so happy", appointment: appointment4)
review5 = Review.create!(rating: 5, description: "Awesome!!! You should take your pet to this place", appointment: appointment5)
review6 = Review.create!(rating: 2, description: "I didn't like it", appointment: appointment6)
review7 = Review.create!(rating: 4, description: "Great service", appointment: appointment7)
review8 = Review.create!(rating: 3, description: "It was ok", appointment: appointment8)

puts "Reviews created"
