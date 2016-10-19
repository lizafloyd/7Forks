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
perill = Topic.create!(topic: "Personal Illness")
famill = Topic.create!(topic: "Family Illness")
abuse = Topic.create!(topic: "Abuse")
loneliness = Topic.create!(topic: "Loneliness")
esteem = Topic.create!(topic: "Self-Esteem")
hobby = Topic.create!(topic: "Hobby")

#work
Tool.create!(text: "Work is only part of a well-lived life.  Remember to prioritize yourself.", source_url: "http://www.forbes.com/sites/jacquelynsmith/2013/04/18/8-ways-to-achieve-better-work-life-balance/#4d86bb6b3a25", topic_id:work.id)
Tool.create!(text: "Learn to say 'no.'", source_url: "http://verilymag.com/2015/06/unhealthy-approval-seeking-behavior-people-pleasers", topic_id:work.id)
Tool.create!(text: "Work smarter, not harder.", source_url: "https://www.fastcompany.com/3053248/how-to-be-a-success-at-everything/7-long-term-productivity-habits-of-the-most-successful-peo", topic_id:work.id)
#School
Tool.create!(text: "Work smarter, not harder.", source_url: "https://www.fastcompany.com/3053248/how-to-be-a-success-at-everything/7-long-term-productivity-habits-of-the-most-successful-peo", topic_id:school.id)
Tool.create!(text: "Keep an eye on anxiety. School is a high-pressure process, and managing your well-being is more important than you think.", source_url: "https://www.adaa.org/tips-manage-anxiety-and-stress", topic_id:school.id)
Tool.create!(text: "Have fun, but be smart!", source_url: "http://rethinkingdrinking.niaaa.nih.gov/How-much-is-too-much/Whats-the-harm/What-Are-Symptoms-Of-An-Alcohol-Use-Disorder.aspx", topic_id:school.id)
#marriage
Tool.create!(text: "Some ideas for keeping the intimacy alive:", source_url: "http://psychcentral.com/blog/archives/2012/02/14/15-ideas-for-keeping-romance-alive-year-round/", topic_id:marriage.id)
Tool.create!(text: "Keeping an active sex life is a good sign for a marriage.", source_url: "http://www.huffingtonpost.com/terry-gaspard-msw-licsw/how-to-revitalize-love-an_b_5162761.html", topic_id:marriage.id)
Tool.create!(text: "If your marriage is a source of hurt in your life, it might be time to take a good hard look at it.", source_url: "http://www.yourtango.com/experts/marni-feuerman/signs-abusive-relationship", topic_id:marriage.id)
#Kids
Tool.create!(text: "Choose and reward positive behaviors in your child.", source_url: "http://familydoctor.org/familydoctor/en/kids/behavior-emotions/child-behavior-what-parents-can-do-to-change-their-childs-behavior.html", topic_id:kids.id)
Tool.create!(text: "Maybe taking a page from the book of another culture will give you a new perspective on parenting.", source_url: "http://www.npr.org/2012/02/12/146769135/move-over-tiger-mother-french-parents-may-be-better-too", topic_id:kids.id)
Tool.create!(text: "Most importantly, enjoy your kids!", source_url: "http://www.parenting.com/article/21-ways-to-enjoy-being-a-mom", topic_id:kids.id)
#perill
Tool.create!(text: "Keep a helpful mindset whenever possible.", source_url: "http://tinybuddha.com/blog/5-powerful-things-to-do-for-yourself-when-youre-sick/", topic_id:perill.id)
Tool.create!(text: "Know your rights.", source_url: "http://www.uhsystem.com/Conway/patient-rights-and-responsibilities", topic_id:perill.id)
Tool.create!(text: "Feel better soon!", source_url: "http://www.wisebread.com/25-ways-to-feel-better-fast", topic_id:perill.id)
#famill
Tool.create!(text: "Keep a helpful mindset whenever possible.", source_url: "http://tinybuddha.com/blog/5-powerful-things-to-do-for-yourself-when-youre-sick/", topic_id:famill.id)
Tool.create!(text: "Know your rights.", source_url: "http://www.uhsystem.com/Conway/patient-rights-and-responsibilities", topic_id:famill.id)
Tool.create!(text: "Care for yourself, too.", source_url: "http://www.goodtherapy.org/blog/how-to-cope-when-your-loved-one-is-ill/", topic_id:famill.id)
#Abuse
Tool.create!(text: "Read Dr. Lundy Bancroft's book, 'Why Does He Do That?' It will change your life.", source_url: "https://www.amazon.com/Why-Does-He-That-Controlling/dp/0425191656", topic_id:abuse.id)
Tool.create!(text: "Lean on family and friends. You may feel alone, but you aren't.", topic_id:abuse.id)
Tool.create!(text: "Other women have been where you are.  Check it out:", source_url: "https://www.theguardian.com/commentisfree/2016/apr/28/i-had-the-courage-to-leave-an-abusive-relationship", topic_id:abuse.id)
#loneliness
Tool.create!(text: "Some suggestions:", source_url: "http://www.everydayhealth.com/hs/major-depression/depression-feeling-lonely/", topic_id:loneliness.id)
Tool.create!(text: "Take yourself on a date. Enjoy your own company!", source_url: "https://www.theguardian.com/commentisfree/2016/apr/28/i-had-the-courage-to-leave-an-abusive-relationship", topic_id:loneliness.id)
Tool.create!(text: "Go to the gym. Endorphins are your friend.", source_url: "https://www.theguardian.com/commentisfree/2016/apr/28/i-had-the-courage-to-leave-an-abusive-relationship", topic_id:loneliness.id)
#esteem
Tool.create!(text: "Write one nice thing down about yourself every day. It might snowball into confidence.", topic_id:esteem.id)
Tool.create!(text: "Here are some tricks worth trying.", source_url: "http://au.reachout.com/steps-to-improve-self-esteem", topic_id:esteem.id)
Tool.create!(text: "Consider whether or not you'll want to seek professional help.", source_url: "http://psychcentral.com/blog/archives/2013/01/24/8-suggestions-for-strengthening-self-esteem-when-you-have-depression/", topic_id:esteem.id)
