User.destroy_all
u1 = User.create :name => "Joel Turnbull", :email => "joel@ga.co", :password => "chicken", :profile_image => 'https://i.pinimg.com/236x/1b/f1/ff/1bf1ff9e52d42ee99d679afdf7baf202--funny-face-pics-funny-baby-faces.jpg', :cover_image => 'https://www.shell.com/energy-and-innovation/the-energy-future/scenarios/shell-scenario-sky/_jcr_content/pagePromo/image.img.960.jpeg/1548184031017/clear-blue-sky.jpeg', :bio => 'Smile while you still have teeth.', :birthday => '1988-01-01', :location => 'Syndey'
u2 = User.create :name => "Mai Nguyen", :email => "mai@ga.co", :password => "chicken", :profile_image => 'https://i.pinimg.com/originals/29/3f/f8/293ff8faf8eccb20f7f44636fd82dba3.jpg', :cover_image => 'https://resilientblog.co/wp-content/uploads/2019/07/sky-quotes.jpg', :bio => 'Everyone is normal until you add them as your Facebook friend', :birthday => '1990-12-01', :location => 'London'
puts "#{ User.count } users created."

Post.destroy_all
p1 = Post.create :image => 'https://i.pinimg.com/236x/25/67/b4/2567b4e6686326e5b39eb5e1ed149033--puppy-play-puppy-love.jpg', :content => "Meet Baxter"
p2 = Post.create :image => 'https://i.redd.it/h3lqd6s7co6z.jpg', :content => "...and meet Nala"
puts "#{ Post.count } posts created."

Message.destroy_all
m1 = Message.create :body => "Hi, I'm James. Let's bond."
m2 = Message.create :body => "Why didn't you reply to my text? Well, how am I supposed to reply to LOL?"
puts "#{ Message.count } messages created."

Comment.destroy_all
c1 = Comment.create :content => "Cute doggo!"
c2 = Comment.create :content => "The best!"
puts "#{ Comment.count } comments created."
