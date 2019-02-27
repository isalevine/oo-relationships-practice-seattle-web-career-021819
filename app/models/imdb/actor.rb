class Actor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    Character.all.select { |character| character.actor == self }
  end

  def movies
    movie_array = []
    self.characters.each do |character|
      character.movies.each do |movie|
        movie_array << movie
      end
    end
    movie_array.uniq
  end

  def shows
    show_array = []
    self.characters.each do |character|
      character.shows.each do |show|
        show_array << show
      end
    end
    show_array.uniq
  end




  def self.most_characters
    character_count = 0
    output_actor = nil
    self.all.each do |actor|
      if actor.characters.count > character_count
        character_count = actor.characters.count
        output_actor = actor
      end
    end
    output_actor
  end






end
