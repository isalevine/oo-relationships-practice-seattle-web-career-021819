class Pledge
  attr_reader :user, :project
  attr_accessor :amount

  @@all = []

  def initialize(user, project, amount)
    @user = user
    @project = project
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

  def self.users
    self.all.map { |pledge| pledge.user}
  end


  








end
