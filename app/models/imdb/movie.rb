class Movie
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def find_moviechars
    MovieChar.all.select { |moviechar| moviechar.movie == self }
  end

  def characters
    self.find_moviechars.map { |moviechar| moviechar.character }
  end

  def actors
    self.characters.map { |character| character.actor }
  end

  def self.most_actors
    actor_count = 0
    output_movie = nil
    self.all.each do |movie|
      if movie.actors.count > actor_count
        actor_count = movie.actors.count
        output_movie = movie
      end
    end
    output_movie
  end



end
