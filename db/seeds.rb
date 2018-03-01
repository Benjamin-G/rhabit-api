# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
  {user_id: 1, firstName: "Dade", lastName: "Murphy", title: "CEO", manager_id: nil},
  {user_id: 2, firstName: "Kate", lastName: "Libby", title: "CTO", manager_id: 1},
  {user_id: 3, firstName: "Edward", lastName: "Vedder", title: "CFO", manager_id: 1},
  {user_id: 4, firstName: "Margo", lastName: "Wallace", title: "VP of Public Relations", manager_id: 1},
  {user_id: 5, firstName: "Eugene", lastName: "Belfort", title: ",VP of Engineering", manager_id:  2},
  {user_id: 6, firstName: "Richard", lastName: "Gill", title: "Public Relations Manager", manager_id: 4},
  {user_id: 7, firstName: "Emmanuel", lastName: "Goldstein", title: "Lead Software Engineer", manager_id: 5},
  {user_id: 8, firstName: "Paul", lastName: "Cook", title: "Software Engineer", manager_id: 5},
  {user_id: 9, firstName: "Joey", lastName: "Pardella", title: "Junior Software Engineer", manager_id: 8},
  {user_id: 10, firstName: "Agnes", lastName: "Pardella", title: "Product Manager", manager_id: 4},
  {user_id: 11, firstName: "Ramon", lastName: "Sanchez", title: "Software Engineer", manager_id: 8}
])