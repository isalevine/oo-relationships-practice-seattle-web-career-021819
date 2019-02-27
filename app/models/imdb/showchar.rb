class ShowChar
  attr_reader :show, :character

  @@all = []

  def initialize(show, character)
    @show = show
    @character = character
    @@all << self
  end

  def self.all
    @@all
  end

  def find_showchars
    ShowChar.all.select { |showchar| showchar.show == self }
  end


end
