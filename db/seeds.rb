# seeds.rb
# avatars 
Avatar.create([
  {id: 1, name: 'twoGlass', path: '/images/wine5.JPG'},
  {id: 2, name: 'grapes', path: '/images/wine6.jpg'},
  {id: 3, name: 'fireworkWine', path: '/images/wine7.jpg'},
  {id: 4, name: 'bottleGlass', path: '/images/wine9.png'},
  {id: 5, name: 'happyGlass', path: '/images/wine10.png'}
])
# Create our users
User.create([
  {id: 1, email: 'nfehlinger@gmail.com', password: 'whaleyeah', username: 'nickfehlinger', bio: 'Co-founder of WineCan.  Human tomato.', hometown: 'New York, NY', avatar_id: 1},
  {id: 2, email: 'katyp03@gmail.com', password: 'roseallday', username: 'katyp03', bio: 'Co-founder of WineCan, and lover of all things even vaguely wine-related.', hometown: 'Napa, CA', avatar_id: 5}
])
# posts
Post.create([
  {id: 1, title: 'Hello World', body: 'Hello World', image: '/images/wine14.png', user_id: 1 }
])
# comments
Comment.create([
  {id: 1, body: 'Nice!  I\'ll take 4.', user_id: 2, post_id: 1}
	])