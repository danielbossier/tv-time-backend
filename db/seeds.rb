# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Show.create!([
  { title: "Breaking Bad", year: 2008, description: "Teacher cooks meth because has cancer!", creator: "Vince Gilligan", seasons: 5, network: "AMC", favorite: true, image: "https://m.media-amazon.com/images/M/MV5BMjhiMzgxZTctNDc1Ni00OTIxLTlhMTYtZTA3ZWFkODRkNmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_FMjpg_UX1000_.jpg" },
  { title: "Family Guy", year: 1999, description: "Lucky there's a man who! Positively can do!", creator: "Seth MacFarlane", seasons: 19, network: "Fox", favorite: false, image: "https://m.media-amazon.com/images/M/MV5BODEwZjEzMjAtNjQxMy00Yjc4LWFlMDAtYjhjZTAxNDU3OTg3XkEyXkFqcGdeQXVyOTM2NTM4MjA@._V1_.jpg" },
  { title: "Ted Lasso", year: 2020, description: "American wanka goes across the pond to coach some footie", creator: "Bill Lawrence", seasons: 2, network: "Apple TV+", favorite: true, image: "https://www.apple.com/tv-pr/shows-and-films/t/ted-lasso/images/show-home-graphic-header/Apple_TV_Ted_Lasso_key_art_sh_cr.jpg" },
  { title: "Succession", year: 2018, description: "Wealthy family members vie for control of family company and wealth.", creator: "Jesse Armstrong", seasons: 2, network: "HBO", favorite: true, image: "https://images-na.ssl-images-amazon.com/images/I/A1mRQW+wssL._RI_.jpg" },
  { title: "Big Bang Theory", year: 2007, description: "Nerds scared of women. Lack social awareness. Bang Bang.", creator: "Chuck Lorre", seasons: 12, network: "CBS", favorite: false, image: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-6482810627.jpg" },
  { title: "Friends", year: 1994, description: "NYC homies joke at coffee shop but it's whatever.", creator: "David Crane", seasons: 10, network: "NBC", favorite: false, image: "https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg" },
  { title: "The Last Man on Earth", year: 2015, description: "Margarita pools are a great way to pass the time.", creator: "Will Forte", seasons: 4, network: "Fox", favorite: true, image: "https://img.hulu.com/user/v3/artwork/ebb4d292-6d2c-4b93-98e6-b03406954151?base_image_bucket_name=image_manager&base_image=48dcae3e-1b84-4293-8f5a-7cbf228a3e1d&region=US&format=jpeg&size=952x536" },
])

Actor.create!([
  { name: "Bryan Cranston", age: 65, gender: "Male", hometown: "Hollywood, CA" },
  { name: "Jason Sudeikis", age: 46, gender: "Male", hometown: "Fairfax, VA" },
  { name: "Sarah Snook", age: 33, gender: "Female", hometown: "Adelaide, Australia" },
  { name: "Seth Green", age: 47, gender: "Male", hometown: "Overbrook Park, PA" },
  { name: "Kaley Cuoco", age: 35, gender: "Female", hometown: "Camarillo, CA" },
  { name: "Seth MacFarlane", age: 47, gender: "Male", hometown: "Kent, CT" },
  { name: "Matthew Perry", age: 52, gender: "Male", hometown: "Williamstown, MA" },
  { name: "Lisa Kudrow", age: 58, gender: "Female", hometown: "Los Angeles, CA" },
  { name: "Jennifer Aniston", age: 52, gender: "Female", hometown: "Los Angeles, CA" },
  { name: "Mayim Bialik", age: 45, gender: "Female", hometown: "San Diego, CA" },
])

Genre.create!([
  { genre: "Comedy" },
  { genre: "Action" },
  { genre: "Drama" },
  { genre: "Thriller" },
  { genre: "Horror" },
  { genre: "Crime" },
  { genre: "Sports" },
  { genre: "Animated" },
  { genre: "Sitcom" },
  { genre: "SciFi" },
])

ShowGenre.create!([
  { show_id: 1, genre_id: 6 },
  { show_id: 1, genre_id: 3 },
  { show_id: 3, genre_id: 1 },
  { show_id: 3, genre_id: 7 },
  { show_id: 2, genre_id: 1 },
  { show_id: 2, genre_id: 9 },
  { show_id: 4, genre_id: 4 },
  { show_id: 6, genre_id: 6 },
  { show_id: 6, genre_id: 9 },
  { show_id: 5, genre_id: 9 },
])

ActorShow.create!([
  { actor_id: 1, show_id: 1 },
  { actor_id: 2, show_id: 3 },
  { actor_id: 3, show_id: 4 },
  { actor_id: 4, show_id: 2 },
  { actor_id: 5, show_id: 5 },
  { actor_id: 6, show_id: 2 },
  { actor_id: 7, show_id: 6 },
  { actor_id: 8, show_id: 6 },
  { actor_id: 9, show_id: 6 },
  { actor_id: 2, show_id: 7 },
  { actor_id: 10, show_id: 5 },
])
