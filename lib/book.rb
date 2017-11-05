# learn spec/01_book_spec.rb

# Book GENRES keeps track of all genres:
  # create books
  # assign each book a genre
  # GENRES class constant will keep track of those genres

# Since we want to add some customization to the method, we'll have to:
  # Explicitly define the genre= method, to integrate our class constant into the method
  # Remove the attr_accessor for :genre since we no longer need to generate a reader AND a writer.
  # Add an attr_reader for :genre, since we still want Ruby to generate a reader for us.
class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

=begin
  GENRES is a Class Constant. Class Constants are available to all instances of a particular class. Whereas instance variables, i.e. title, author, etc., are individual to each instance of a class, class constants are shared among all instances. They all have access to the same data, and if that data should change for some reason, all instances will know about that change.
=end
  GENRES = [] # start with an empty array

  # initialize with a title
  def initialize(title)
      @title = title
  end

  # method to turn the page
  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  # create the writer for genre and add the logic for the class constant
  def genre=(genre)
    @genre = genre
    GENRES << genre # update the GENRES array
  end
end
