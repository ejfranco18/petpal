User.create!(first_name: "Montgomery", last_name: "Burns", email: "mburns@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Drogon", pet_type: "Dog", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573555175/petpal/burns_vwuzh1.jpg")
User.create!(first_name: "Milhouse", last_name: "Van Houten", email: "mvanhouten@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Viserion", pet_type: "Dog")
User.create!(first_name: "Nelson", last_name: "Muntz", email: "nmuntz@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Rhaegal", pet_type: "Cat")
User.create!(first_name: "Sideshow", last_name: "Sideshow", email: "sbob@gmail.com", role: "Pet Sitter", password: "123456", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573556819/petpal/bob_gudnny.jpg")
User.create!(first_name: "Seymour", last_name: "Skinner", email: "sskinner@gmail.com", role: "Pet Sitter", password: "123456")

puts "Users created"

Petplace.create(name: "Cypress Creek", details: "To alcohol! The cause of, and solution to, all of life's problems.", address: "Madrid", price: 30, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491212/petpal/ladogworks-indoor-dog-park_wy77tu.jpg",user_id: 4)
Petplace.create(name: "Moe's Tavern", details: "If you pray to the wrong god, you might just make the right one madder and madder.", address: "Madrid", price: 50, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491410/petpal/dog-daycare-pic1_sth8ej.jpg",user_id: 5)

puts "Petplaces created"

Appointment.create!(start_date: "2019-11-13", end_date: "2019-11-16", status: "Pending", user_id: 1, petplace_id: 1, created_at: "2019-11-13 10:22:00", updated_at: "2019-11-13 10:22:00")
Appointment.create!(start_date: "2019-11-14", end_date: "2019-11-16", status: "Pending", user_id: 1, petplace_id: 1, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")

puts "Appointments created"

Review.create!(rating: 5, description: "It was fantastic for my pet", appointment_id: 1)
Review.create!(rating: 1, description: "My pet is now pregnant, terrible", appointment_id: 1)

puts "Reviews created"
