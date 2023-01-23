## DESTROY
puts "💥 Destroying data..."
User.destroy_all
Song.destroy_all
Like.destroy_all

## FUNCTIONS
def genre_select(id)
  case id
  when 1
    "Rock"
  when 2
    "Hip Hop"
  when 3
    "Electronic"
  when 4
    "Metal"
  when 5
    "Pop"
  when 6
    "Classical"
  when 7
    "Country"
  when 8
    "Experimental"
  when 9
    "R&B"
  when 10
    "Jazz"
  else
    "Invalid Selection"
  end
end

## SEEDING
puts "🌱 Seeding data..."

# Users
puts "🌱 Seeding users..."
10.times do
  User.create(
    name: Faker::Name.name,
    age: rand(10..100),
    bio: Faker::Lorem.paragraph(sentence_count: 20),
    image: Faker::Avatar.image,
    fav_genre: genre_select(rand(1..10)),
    fav_song: rand(1..20)
  )
end

# Songs
puts "🌱 Seeding songs..."
Song.create(
  title: "The Art of Peer Pressure",
  artist: "Kendrick Lamar",
  genre: genre_select(2),
  link: "2PieESXphabz5AkALFS08X"
)
Song.create(
  title: "Way Too Long",
  artist: "Bent Knee",
  genre: genre_select(1),
  link: "7IB1WPC9aAU1fo2bgM8rcI"
)
Song.create(
  title: "Eriatarka",
  artist: "The Mars Volta",
  genre: genre_select(1),
  link: "310CmUstbdDdogxSO340qU"
)
Song.create(
  title: "Diamond",
  artist: "All Them Witches",
  genre: genre_select(1),
  link: "1zAx94fNMR725rsFiHPG7z"
)
Song.create(
  title: "Patterns Emerge",
  artist: "G Jones",
  genre: genre_select(3),
  link: "6gO11UQzZhNmQqslHtNh3G"
)
Song.create(
  title: "The Race Is About To Begin",
  artist: "black midi",
  genre: genre_select(8),
  link: "2GBNZjl1l1PbQ2mW8dMKVk"
)
Song.create(
  title: "JAPAN",
  artist: "Athletic Progression",
  genre: genre_select(10),
  link: "7kSf3P5NdSZKU3q2LSzpg8"
)
Song.create(
  title: "Goliath",
  artist: "Karnivool",
  genre: genre_select(4),
  link: "1Jnp6In3o2qarJS6mPP8px"
)
Song.create(
  title: "Mother Mother",
  artist: "SOLA-MI",
  genre: genre_select(5),
  link: "63WmmdVMfwA76T1kxXuTt3"
)
Song.create(
  title: "The Powers That B",
  artist: "Death Grips",
  genre: genre_select(8),
  link: "3AHu2gQ8k0xkHzm4qm60zm"
)
Song.create(
  title: "LVL",
  artist: "A$AP Rocky",
  genre: genre_select(2),
  link: "787rCZF9i4L1cXGMkdyIk4"
)
Song.create(
  title: "One More Year",
  artist: "Tame Impala",
  genre: genre_select(1),
  link: "5ozqshq2dtU7SYCpCBu0NE"
)
Song.create(
  title: "White Girl",
  artist: "Shy Glizzy",
  genre: genre_select(2),
  link: "5yJzkdwbrQCwua2dIC3K6A"
)
Song.create(
  title: "Summer Breeze",
  artist: "Seals and Crofts",
  genre: genre_select(1),
  link: "01UYpHuzHi4eB9PAbDoPY2"
)
Song.create(
  title: "Flaws and Sins",
  artist: "Juice Wrld",
  genre: genre_select(2),
  link: "2BSbCCbaSCzkOEZa6N5901"
)
Song.create(
  title: "Fuck the Industry",
  artist: "$uicideboy$",
  genre: genre_select(2),
  link: "6I4vc5AVonWcY87fVVZhM5"
)
Song.create(
  title: "Scary Monsters and Nice Sprites",
  artist: "Skrillex",
  genre: genre_select(3),
  link: "4rwpZEcnalkuhPyGkEdhu0"
)
Song.create(
  title: "Love Lost",
  artist: "Mac Miller",
  genre: genre_select(2),
  link: "0N9C80kcgL0xXGduKnYKWi"
)
Song.create(
  title: "The Rift",
  artist: "Chappaqua Wrestling",
  genre: genre_select(1),
  link: "3vUHrmHxjsngAXKvxRJ6nc"
)
Song.create(
  title: "Y'all Want a Single Artist",
  artist: "Korn",
  genre: genre_select(4),
  link: "2WSWm0zlL3CJRACHS5KXbB"
)

# Likes
puts "🌱 Seeding likes..."
(1..20).to_a.map{|song_id|
  users = (1..10).to_a.shuffle.take(3)
  users.map{|user_id|
    Like.create(
      user_id: user_id,
      song_id: song_id
    )
  }
}


puts "✔️ Done Seeding!"