@employee = Employee.create(email: "test@test.com", password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "5555555555",
                    ssn: "1234",
                    company: "ABC Company")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Admin",
                 last_name: "Name",
                 phone: "5555555555",
                 ssn: "1234",
                 company: "ABC Company")

puts "1 Admin User created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, work_performed: "#{post} work_performed content Hoodie actually thundercats mixtape, chia master cleanse dreamcatcher literally. Church-key cliche polaroid, chartreuse tilde iPhone freegan bushwick ugh poke pour-over sriracha. Tbh four loko la croix sustainable man braid. Meggings next level salvia YOLO messenger bag whatever glossier, prism williamsburg hashtag thundercats +1. Enamel pin tote bag readymade, vinyl drinking vinegar succulents try-hard sriracha lomo gentrify heirloom hell of slow-carb. Iceland literally heirloom sriracha put a bird on it tumblr VHS forage offal. Kitsch ennui truffaut tbh migas, photo booth tilde succulents fashion axe echo park wolf.", user_id: @employee.id, daily_hours: 12.5)
end

puts "100 posts have been created"
