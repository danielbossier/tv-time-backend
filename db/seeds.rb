# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Show.create!([
  { title: "Breaking Bad", year: 2008, description: "Teacher cooks meth because he has cancer!", creator: "Vince Gilligan", seasons: 5, network: "AMC", favorite: true, image: "https://m.media-amazon.com/images/M/MV5BMjhiMzgxZTctNDc1Ni00OTIxLTlhMTYtZTA3ZWFkODRkNmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_FMjpg_UX1000_.jpg" },
  { title: "Family Guy", year: 1999, description: "Lucky there's a man who! Positively can do!", creator: "Seth MacFarlane", seasons: 19, network: "Fox", favorite: false, image: "image.jpg" },
  { title: "Ted Lasso", year: 2020, description: "American wanka goes across the pond to coach some footie", creator: "Bill Lawrence", seasons: 2, network: "Apple TV+", favorite: true, image: "image.jpg" },
  { title: "Succession", year: 2018, description: "Wealthy family members vie for control of family company and wealth.", creator: "Jesse Armstrong", seasons: 2, network: "HBO", favorite: true, image: "image.jpg" },
  { title: "Big Bang Theory", year: 2007, description: "Nerds scared of women. Lack social awareness. Bang Bang.", creator: "Chuck Lorre", seasons: 12, network: "CBS", favorite: false, image: "image.jpg" },
  { title: "Friends", year: 1994, description: "NYC homies joke at coffee shop but it's whatever.", creator: "David Crane", seasons: 10, network: "NBC", favorite: false, image: "image.jpg" },
])
