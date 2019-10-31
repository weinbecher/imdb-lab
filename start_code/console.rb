require_relative('models/casting.rb')
require_relative('models/movie.rb')
require_relative('models/star.rb')

require ( 'pry-byebug' )

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({ 'title' => 'Donnie Darko', 'genre' => 'Sci-Fi', 'budget' => '5000000' })
movie1.save

movie2 = Movie.new({ 'title' => 'The Dark Knight', 'genre' => 'Action', 'budget' => '500000000' })
movie2.save

movie3 = Movie.new({ 'title' => 'Donnie Brasco', 'genre' => 'Crime', 'budget' => '200000000' })
movie3.save

movie4 = Movie.new({ 'title' => 'Pirates Of The Caribbean', 'genre' => 'Adventure', 'budget' => '1000000000'})
movie4.save



star1 = Star.new({ 'first_name' => 'Jake', 'last_name' => 'Gyllenhaal'})
star1.save

star2 = Star.new({ 'first_name' => 'Christian', 'last_name' => 'Bale'})
star2.save

star3 = Star.new({ 'first_name' => 'Johnny', 'last_name' => 'Depp'})
star3.save

star4 = Star.new({ 'first_name' => 'Gary', 'last_name' => 'Oldman'})
star4.save


casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 20000 })
casting1.save

casting2 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 300000 })
casting2.save

casting3 = Casting.new({ 'movie_id' => movie3.id, 'star_id' => star3.id, 'fee' => 1000000 })
casting3.save

casting4 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star4.id, 'fee' => 100000 })
casting4.save

casting5 = Casting.new({ 'movie_id' => movie4.id, 'star_id' => star3.id, 'fee' => 2000000 })
casting5.save

binding.pry
nil
