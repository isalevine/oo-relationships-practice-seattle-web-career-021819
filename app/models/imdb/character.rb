class Character
  attr_reader :name
  attr_accessor :actor

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end



  def find_moviechars
    MovieChar.all.select { |moviechar| moviechar.character == self }
  end

  def movies
    self.find_moviechars.map { |moviechar| moviechar.movie }
  end


  def find_showchars
    ShowChar.all.select { |showchar| showchar.character == self }
  end

  def shows
    self.find_showchars.map { |showchar| showchar.show }
  end



  def self.most_appearances
    highest_appearance = 0
    output_character = nil
    self.all.each do |character|
      if character.num_appearances > highest_appearance
        highest_appearance = character.num_appearances
        output_character = character
      end
    end
    output_character
  end


  def num_appearances
    appearance_number = 0
    appearance_number += self.shows.count
    appearance_number += self.movies.count
  end








end
