User.destroy_all
u1 = User.create :name => "Joel Turnbull", :email => "joel@ga.co", :password => "chicken", :profile_image => "https://i.pinimg.com/236x/1b/f1/ff/1bf1ff9e52d42ee99d679afdf7baf202--funny-face-pics-funny-baby-faces.jpg", :cover_image => "https://www.shell.com/energy-and-innovation/the-energy-future/scenarios/shell-scenario-sky/_jcr_content/pagePromo/image.img.960.jpeg/1548184031017/clear-blue-sky.jpeg", :bio => "Smile while you still have teeth.", :birthday => "1988-01-01", :location => "Sydney"
u2 = User.create :name => "Mai Nguyen", :email => "mai@ga.co", :password => "chicken", :profile_image => "https://i.pinimg.com/originals/29/3f/f8/293ff8faf8eccb20f7f44636fd82dba3.jpg", :cover_image => "https://resilientblog.co/wp-content/uploads/2019/07/sky-quotes.jpg", :bio => "Everyone is normal until you add them as your Facebook friend", :birthday => "1990-12-01", :location => "London"
u3 = User.create :name => "Faith Sylvia", :email => "faith@ga.co", :password => "chicken", :profile_image => "https://i.pinimg.com/474x/98/bd/8b/98bd8beef5548efcfc810d8f4341fea9.jpg", :cover_image => "https://i.pinimg.com/originals/6b/c3/19/6bc319faa3cbbcfc5d98a740a908aaa7.jpg", :bio => "Lorem ipsum dolor sit amet, consectetur adipisicing elit.", :birthday => "1993-01-20", :location => "New Hampshire"
u4 = User.create :name => "Chris Johnson", :email => "chris@ga.co", :password => "chicken", :profile_image => "https://i.pinimg.com/originals/af/ea/b3/afeab3e94a4627072c290221eb6f35c0.jpg", :cover_image => "https://wallpaperaccess.com/full/338765.jpg", :bio => "Dolcelatte halloumi mozzarella jarlsberg pepper jack say cheese babybel who moved my cheese. Gouda manchego.", :birthday => "1990-09-25", :location => "Sydney"
u5 = User.create :name => "David Johnson", :email => "david@ga.co", :password => "chicken", :profile_image => "https://i.pinimg.com/564x/e2/51/9e/e2519e62a7ee2a6504d7e389f2f6c14e.jpg", :cover_image => "https://c.tadst.com/gfx/750w/barcelona-morning-sky.jpg?1", :bio => "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :birthday => "1992-12-10", :location => "Florida"
u6 = User.create :name => "Kimberley Osborn", :email => "kimberley@ga.co", :password => "chicken", :profile_image => "https://www.momtastic.com/assets/uploads/gallery/funny-faces-made-by-epically-cute-kids/funny-faces-made-by-epically-cute-kids-on-itsmomtastic-by-letmestart-featuring-fruit-cup-via-sophia-macheras-640x853.jpg", :cover_image => "https://toppng.com/uploads/preview/sunset-sky-pink-trees-sun-1157033920843x8eskgug.jpg", :bio => "Chalk and cheese queso taleggio. Hard cheese say cheese monterey jack parmesan halloumi hard cheese pepper jack cottage cheese.", :birthday => "1988-02-08", :location => "Johannesburg"


Post.destroy_all
p1 = Post.create :images => ["https://i.pinimg.com/236x/25/67/b4/2567b4e6686326e5b39eb5e1ed149033--puppy-play-puppy-love.jpg"], :content => "Meet Baxter"
p2 = Post.create :images => ["https://i.redd.it/h3lqd6s7co6z.jpg"], :content => "...and meet Nala"
puts "#{ Post.count } posts created."
p3 = Post.create :images => ["https://www.golfdigest.com/content/dam/images/golfdigest/fullset/2018/08/16/5b75cf1bff703d43abd41945_Justin-Thomas-takeaway.jpg"],  :content => "Prep work is done, it is go time!"
puts "#{ Post.count } posts created."
p4 = Post.create :images => ["https://www.sportbible.com/cdn-cgi/image/width=720,quality=70,format=jpeg,fit=pad,dpr=1/https%3A%2F%2Fs3-images.sportbible.com%2Fs3%2Fcontent%2Fab93c5a45fdab82dbed9aad825bbcf7d.png"], :content => "A bit sweaty and a bit tired but smiles on faces"
puts "#{ Post.count } posts created."
p5 = Post.create :content => "Congratulations on your engagement!"
puts "#{ Post.count } posts created."
p6 = Post.create :content => "Happy Birthday!"
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

puts "Posts and Circles"
o1.posts << p1 << p3 << p5
o2.posts << p2 << p4 << p6

puts "Messages and Users"
u1.messages << m1
u2.messages << m2

puts "Circles and Users"
u1.circles << o1 << o3
u2.circles << o2 << o4
u3.circles << o1 << o2
u4.circles << o2
u5.circles << o3 << o4
u6.circles << o4

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
