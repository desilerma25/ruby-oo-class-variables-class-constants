class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre # we want genre to be explicilty written, so we give it a reader

  GENRES = [] # creates a class constant

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre) # here we explicitly create the writer method
    @genre = genre 
    GENRES << genre # shovel genres into our class constant array
  end

end