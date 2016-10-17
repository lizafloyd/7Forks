# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Topic.destroy_all
User.destroy_all
Fork.destroy_all
Tool.destroy_all
work = Topic.create!(topic: "Work")
school = Topic.create!(topic: "School")
marriage = Topic.create!(topic: "Marriage")
kids = Topic.create!(topic: "Kids")

Tool.create!(text: "Work advice goes here", source_url: "http://www.quickbase.com/blog/the-best-work-advice-i-ever-received", topic_id:work.id)
