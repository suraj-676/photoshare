# created data base for user and posts

print "Creating users..."
User.destroy_all
u1 = User.create! email: "Suraj@ga.co", name: "suraj", password: "chicken", avatar: "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
u2 = User.create! email: "Dan@ga.co", name: "dan", password: "chicken", avatar: "https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg"
u3 = User.create! email: "Steven@ga.co", name: "steven", password: "chicken", avatar: "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV3JTIwemVhbGFuZCUyMHBlb3BsZXxlbnwwfHwwfHw%3D&w=1000&q=80"
u4 = User.create! email: "Franki@ga.co", name: "franki", password: "chicken", avatar: "https://ichef.bbci.co.uk/news/490/cpsprodpb/C870/production/_112921315_gettyimages-876284806.jpg"

puts "created #{User.count} users."

print "Creating posts..."
Post.destroy_all
p1 = Post.create!(
  image: "https://i.ytimg.com/vi/tArC9-RHmU4/maxresdefault.jpg",
  user_id: u1.id,
  title: "cars",
  description: "Technology is Amazing",

)

p2 = Post.create!(
  image: "https://images.unsplash.com/photo-1595433707802-6b2626ef1c91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80/300/300",
  user_id: u1.id,
  title: "funny",
  description: "Best pet",
)
p3 = Post.create!(
  image: "https://assets.unenvironment.org/styles/article_billboard_image/s3/2021-05/alberta-2297204_1920.jpg?h=1483c54f&amp;itok=GdjA9GRu/300/300",
  user_id: u2.id,
  title: "Nature",
  description: "",

)
p4 = Post.create!(
  image: "https://www.turpentinecreek.org/wp-content/uploads/2020/05/IMG_1405.jpg/300/300",
  user_id: u3.id,
  title: "White Tier",
  description: "These tigers are very rare",

)
p5 = Post.create!(
  image: "https://lsj.com.au/wp-content/uploads/2021/04/Legal-updates_Animal-law.jpg/300/300",
  user_id: u4.id,
  title: "Penguins",
  description: "Friendly with humans",
)

puts "created #{Post.count} posts:"

print "Creating comments..."
Comment.destroy_all
c1 = Comment.create!(
  user_id: u1.id,
  content: "simba is dumbass1",
  post_id: p1.id,
)
c2 = Comment.create!(
  user_id: u1.id,
  content: "simba is dumbass2",
  post_id: p1.id,
)
c3 = Comment.create!(
  user_id: u2.id,
  content: "simba is dumbass3",
  post_id: p2.id,
)
c4 = Comment.create!(
  user_id: u3.id,
  content: "simba is dumbass4",
  post_id: p3.id,
)
c5 = Comment.create!(
  user_id: u4.id,
  content: "simba is dumbass5",
  post_id: p4.id,
)
puts "created #{Comment.count} comments:"
