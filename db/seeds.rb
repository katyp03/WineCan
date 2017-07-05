# seeds.rb
# avatars 
Avatar.create([
  {id: 1, name: 'wineCan', path: '/images/wine5.JPG'},
  {id: 2, name: 'wineGlass', path: '/images/wine6.jpg'},
  {id: 3, name: 'wineCan', path: '/images/wine7.jpg'},
  {id: 4, name: 'wineGlass', path: '/images/wine9.png'},
  {id: 5, name: 'wineCan', path: '/images/wine10.png'}
])
# Create our users
User.create([
  {id: 1, email: 'nfehlinger@gmail.com', password: 'password', username: 'nickfehlinger', bio: 'I\'m pretty drunk right now', hometown: 'New York, NY', avatar_id: 1},
  {id: 2, email: 'katyp03@gmail.com', password: 'password', username: 'katyp03', bio: 'I\'m pretty drunk right now', hometown: 'New York, NY', avatar_id: 2}
])
# posts
Post.create([
  {id: 1, title: 'Hello World', body: 'Hello World', image: '/images/HelloWorld.jpg', user_id: 1 }
])
# comments
Comment.create([
  {id: 1, body: 'Hello World', user_id: 2, post_id: 1}
	])