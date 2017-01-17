@user = User.create(email: "test@test.com", password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "5555555555")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Admin",
                 last_name: "Name",
                 phone: "5555555555")

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content Hoodie actually thundercats mixtape, chia master cleanse dreamcatcher literally. Church-key cliche polaroid, chartreuse tilde iPhone freegan bushwick ugh poke pour-over sriracha. Tbh four loko la croix sustainable man braid. Meggings next level salvia YOLO messenger bag whatever glossier, prism williamsburg hashtag thundercats +1. Enamel pin tote bag readymade, vinyl drinking vinegar succulents try-hard sriracha lomo gentrify heirloom hell of slow-carb. Iceland literally heirloom sriracha put a bird on it tumblr VHS forage offal. Kitsch ennui truffaut tbh migas, photo booth tilde succulents fashion axe echo park wolf.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"


100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"