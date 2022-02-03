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
  description: "There’s nothing like the unconditional love of a pet. They show you affection, give you a sense of purpose, and greet you every day when you come home (well, maybe not if you have a cat). There’s a lot of beautiful sayings and quotes out there about the rare kind of magic pets bring to our lives. Whether you’re about to take the adoption plunge or you just want to wax poetic about puppy love, these quotes will melt your heart in the same way a surprise cuddle from your pet does.",

)

p2 = Post.create!(
  image: "https://images.unsplash.com/photo-1595433707802-6b2626ef1c91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80/300/300",
  user_id: u1.id,
  title: "Cats",
  description: "Keep in mind, kittens and senior cats will spend more time sleeping than, say, an adolescent cat. But if you're worried that your cat is sleeping too much—or too little—talk to your vet about what's normal for his breed, age, activity level, and size. ",
)
p3 = Post.create!(
  image: "https://assets.unenvironment.org/styles/article_billboard_image/s3/2021-05/alberta-2297204_1920.jpg?h=1483c54f&amp;itok=GdjA9GRu/300/300",
  user_id: u2.id,
  title: "Nature",
  description: "Nature, in the broadest sense, is the physical world or universe. Nature can refer to the phenomena of the physical world, and also to life in general. The study of nature is a large, if not the only, part of science. ... Within the various uses of the word today, nature often refers to geology and wildlife.",

)
p4 = Post.create!(
  image: "https://www.turpentinecreek.org/wp-content/uploads/2020/05/IMG_1405.jpg/300/300",
  user_id: u3.id,
  title: "White Tiger",
  description: "A white tiger is a Bengal tiger with very rare, creamy white fur; blue eyes; and gray or brownish stripes. It is not a special kind of tiger or an albino tiger. ... White tigers can weigh as much as 570 pounds, which is a little more than two giant pandas, and can grow to be more than ten feet long.",

)
p5 = Post.create!(
  image: "https://lsj.com.au/wp-content/uploads/2021/04/Legal-updates_Animal-law.jpg/300/300",
  user_id: u4.id,
  title: "Penguins",
  description: "The stocky, short-legged appearance of penguins has endeared them to people worldwide. They range from about 35 cm (14 inches) in height and approximately 1 kg (about 2 pounds) in weight in the blue, or fairy, penguin (Eudyptula minor) to 115 cm (45 inches) and 25 to 40 kg (55 to 90 pounds) in the emperor penguin (Aptenodytes forsteri). Most are black on the back and white below, often with lines of black across the upper breast or spots of white on the head. Colour is rare, being limited to red or yellow irises of the eye in some species; red beaks or feet in a few; yellow brow tufts in the three species of Eudyptes; and orange and yellow on the head, neck, and breast in the emperor and king (A. patagonica) penguins.",
)

puts "created #{Post.count} posts:"

print "Creating comments..."
Comment.destroy_all
c1 = Comment.create!(
  user_id: u1.id,
  content: "Cats are cutests pet ever",
  post_id: p1.id,
)
c2 = Comment.create!(
  user_id: u1.id,
  content: "Future of spending money",
  post_id: p1.id,
)
c3 = Comment.create!(
  user_id: u2.id,
  content: "Nature",
  post_id: p2.id,
)
c4 = Comment.create!(
  user_id: u3.id,
  content: "White Bengal Tigers",
  post_id: p3.id,
)
c5 = Comment.create!(
  user_id: u4.id,
  content: "Penguins",
  post_id: p4.id,
)
puts "created #{Comment.count} comments:"
