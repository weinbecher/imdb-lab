require_relative('models/casting.rb')
require_relative('models/movie.rb')
require_relative('models/star.rb')

require ( 'pry-byebug' )

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({ 'title' => 'Donnie Darko', 'genre' => 'Sci-Fi' })
movie1.save

movie2 = Movie.new({ 'title' => 'The Dark Knight', 'genre' => 'Action' })
movie2.save

movie3 = Movie.new({ 'title' => 'Donnie Brasco', 'genre' => 'Crime' })
movie3.save

star1 = Star.new({ 'first_name' => 'Jake', 'last_name' => 'Gyllenhaal'})
star1.save

star2 = Star.new({ 'first_name' => 'Christian', 'last_name' => 'Bale'})
star2.save

star3 = Star.new({ 'first_name' => 'Johnny', 'last_name' => 'Depp'})
star3.save

casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 20000 })
casting1.save

casting2 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 300000 })
casting2.save

casting3 = Casting.new({ 'movie_id' => movie3.id, 'star_id' => star3.id, 'fee' => 1000000 })
casting3.save

binding.pry
nil
