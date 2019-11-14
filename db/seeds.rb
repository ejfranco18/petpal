User.destroy_all
Petplace.destroy_all
Appointment.destroy_all
Review.destroy_all

user1 = User.create!(first_name: "Montgomery", last_name: "Burns", email: "mburns@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Drogon", pet_type: "Dog", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573555175/petpal/burns_vwuzh1.jpg")
user2 = User.create!(first_name: "Milhouse", last_name: "Van Houten", email: "mvanhouten@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Viserion", pet_type: "Dog")
user3 = User.create!(first_name: "Nelson", last_name: "Muntz", email: "nmuntz@gmail.com", role: "Pet Owner", password: "123456", pet_name: "Rhaegal", pet_type: "Cat")
user4 = User.create!(first_name: "Sideshow", last_name: "Sideshow", email: "sbob@gmail.com", role: "Pet Sitter", password: "123456", user_image: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573556819/petpal/bob_gudnny.jpg")
user5 = User.create!(first_name: "Seymour", last_name: "Skinner", email: "sskinner@gmail.com", role: "Pet Sitter", password: "123456")

puts "Users created"

petplace1 = Petplace.create(name: "Cypress Creek", details: "To alcohol! The cause of, and solution to, all of life's problems.", address: "Calle Linares 20, Madrid", price: 30, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491212/petpal/ladogworks-indoor-dog-park_wy77tu.jpg", user: user4)
petplace2 = Petplace.create(name: "Moe's Tavern", details: "If you pray to the wrong god, you might just make the right one madder and madder.", address: "Calle de Sta Engracia 37, Madrid", price: 50, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491410/petpal/dog-daycare-pic1_sth8ej.jpg", user: user1)
petplace3 = Petplace.create(name: "Cypress Creek", details: "To alcohol! The cause of, and solution to, all of life's problems.", address: "Madrid", price: 30, images: "https://res.cloudinary.com/dvod2ra7g/image/upload/v1573491212/petpal/ladogworks-indoor-dog-park_wy77tu.jpg", user: user2)

puts "Petplaces created"

appointment1 = Appointment.create!(start_date: "2019-11-13", end_date: "2019-11-16", status: "pending", user: user1, petplace: petplace1, created_at: "2019-11-13 10:22:00", updated_at: "2019-11-13 10:22:00")
appointment2 = Appointment.create!(start_date: "2019-11-14", end_date: "2019-11-16", status: "pending", user: user4, petplace: petplace2, created_at: "2019-11-13 10:22:07", updated_at: "2019-11-13 10:22:07")

puts "Appointments created"

review1 = Review.create!(rating: 5, description: "It was fantastic for my pet", appointment: appointment1)
review2 = Review.create!(rating: 1, description: "My pet is now pregnant, terrible", appointment: appointment2)

puts "Reviews created"
