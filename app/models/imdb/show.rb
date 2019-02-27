class Show
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def find_showchars
    ShowChar.all.select { |showchar| showchar.show == self }
  end

  def characters
    self.find_showchars.map { |showchar| showchar.character }
  end

  def actors
    self.characters.map { |character| character.actor }
  end




  def self.on_the_big_screen
    output_list = []
    self.all.each do |show|
      show_title = show.title
      Movie.all.each do |movie|
        if movie.title == show.title
          output_list << show
        end
      end
    end
    output_list
  end





end
