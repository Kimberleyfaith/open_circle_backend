User.destroy_all
u1 = User.create :name => "Joel Turnbull", :email => "joel@ga.co", :password => "chicken", :profile_image => "https://i.pinimg.com/236x/1b/f1/ff/1bf1ff9e52d42ee99d679afdf7baf202--funny-face-pics-funny-baby-faces.jpg", :cover_image => "https://www.shell.com/energy-and-innovation/the-energy-future/scenarios/shell-scenario-sky/_jcr_content/pagePromo/image.img.960.jpeg/1548184031017/clear-blue-sky.jpeg", :bio => "Smile while you still have teeth.", :birthday => "1988-01-01", :location => "Sydney"
u2 = User.create :name => "Mai Nguyen", :email => "mai@ga.co", :password => "chicken", :profile_image => "https://i.pinimg.com/originals/29/3f/f8/293ff8faf8eccb20f7f44636fd82dba3.jpg", :cover_image => "https://resilientblog.co/wp-content/uploads/2019/07/sky-quotes.jpg", :bio => "Everyone is normal until you add them as your Facebook friend", :birthday => "1990-12-01", :location => "London"
puts "#{ User.count } users created."

Post.destroy_all
p1 = Post.create :image => "https://i.pinimg.com/236x/25/67/b4/2567b4e6686326e5b39eb5e1ed149033--puppy-play-puppy-love.jpg", :content => "Meet Baxter"
p2 = Post.create :image => "https://i.redd.it/h3lqd6s7co6z.jpg", :content => "...and meet Nala"
puts "#{ Post.count } posts created."

Message.destroy_all
m1 = Message.create :body => "Hi, I'm James. Let's bond."
m2 = Message.create :body => "Why didn't you reply to my text? Well, how am I supposed to reply to LOL?"
puts "#{ Message.count } messages created."

Comment.destroy_all
c1 = Comment.create :content => "Cute doggo!"
c2 = Comment.create :content => "The best!"
puts "#{ Comment.count } comments created."

Circle.destroy_all
o1 = Circle.create :name => "Friends", :image => "https://pyxis.nymag.com/v1/imgs/986/0a9/fb8617a064d7dee0e01b7335d9769a49ac-23-friends-cover-story-lede-mobile.rvertical.w570.jpg"
o2 = Circle.create :name => "Colleagues", :image => "https://positiveroutines.com/wp-content/uploads/2018/11/colleagues-with-all-hands-in-teamwork-concept.jpg"
o3 = Circle.create :name => "Family", :image => "https://content.thriveglobal.com/wp-content/uploads/2019/11/family-.jpg"
o4 = Circle.create :name => "Fantasy Football", :image => "https://miro.medium.com/max/812/1*t3Yer2tVwRZjfFqXy94jMg.png"
puts "#{ Circle.count } circles created."

Chatroom.destroy_all
r1 = Chatroom.create :title => "The Four Lokos"
r2 = Chatroom.create :title => "Birthday Weekend"
puts "#{ Chatroom.count } chatrooms created."

Like.destroy_all
l1 = Like.create
l2 = Like.create

puts "Posts and Users"
u1.posts << p1
u2.posts << p2

puts "Messages and Users"
u1.messages << m1
u2.messages << m2

puts "Circles and Users"
u1.circles << o1 << o3
u2.circles << o2 << o4

puts "Messages and Chatrooms"
r1.messages << m1
r2.messages << m2

puts "Comments and Posts"
p1.comments << c1
p2.comments << c2

puts "Likes and Posts"
p1.likes << l1
p2.likes << l2

puts "Likes and Users"
u1.likes << l1
u2.likes << l2

puts "Comments and Users"
u1.comments << c1
u2.comments << c2
