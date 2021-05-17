User.destroy_all
u1 = User.create :name => "Joel Turnbull", :email => "joel@ga.co", :password => "chicken"
u2 = User.create :name => "Mai Nguyen", :email => "mai@ga.co", :password => "chicken"
puts "#{ User.count } users created."

Post.destroy_all
p1 = Post.create :image => 'https://i.pinimg.com/236x/25/67/b4/2567b4e6686326e5b39eb5e1ed149033--puppy-play-puppy-love.jpg', :content => "Meet Baxter"
p2 = Post.create :image => 'https://i.redd.it/h3lqd6s7co6z.jpg', :content => "...and meet Nala"
puts "#{ Post.count } posts created."
