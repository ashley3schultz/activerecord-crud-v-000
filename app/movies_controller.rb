# Replace the '__' in the below methods to to make the specs pass!
# Each '__' corresponds to a single line of code you will need to write.
# See the example below on the left and how it should look on the right.

# def make_a_new_movie_instance    # def make_a_new_movie_instance
#   movie = __                     #   movie = Movie.new
# end                              # end

def can_be_instantiated_and_then_saved
  movie = Movie.new
  movie.title = "This is a title."
  movie.save
end

def can_be_created_with_a_hash_of_attributes
  attributes = {
      title: "The Sting",
      release_date: 1973,
      director: "George Roy Hill",
      lead: "Paul Newman",
      in_theaters: false
  }
  movie = Movie.create_with(attributes)
end

def can_be_created_in_a_block(args = nil)
  Movie.create do |m|
    m.title = args[:title] if args != nil
  end
end

def can_get_the_first_item_in_the_database
  movie = Movie.first
  movie.title
end

def can_get_the_last_item_in_the_database
  movie = Movie.last
  movie.title
end

def can_get_size_of_the_database
  movie = Movie.all
  movie.size
end

def can_find_the_first_item_from_the_database_using_id
  movie = Movie.find(1)
  movie.title
end

def can_find_by_multiple_attributes
  movie = Movie.find_by(title: 'Title') || Movie.find_by(release_date: 2000) || Movie.find_by(director: 'Me')
  movie
end

def can_find_using_where_clause_and_be_sorted
  movie = Movie.where("release_date > 2002").order(release_date: :desc)
  movie
end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick"
    Movie.create(title: "Awesome Flick")
    m = Movie.find_by(title: 'Awesome _Flick')
    m.title = "Even Awesomer Flick"
    m.save
end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
  Movie.create(title: "Wat?")
  __
  __
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  5.times do |i|
    Movie.create(title: "Movie_#{i}", release_date: 2000+i)
  end
  __
end

def can_destroy_a_single_item
  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  __
  __
end

def can_destroy_all_items_at_once
  10.times do |i|
    Movie.create(title: "Movie_#{i}")
  end
  __
end
