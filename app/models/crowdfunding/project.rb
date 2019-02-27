class Project
  attr_reader :creator
  attr_accessor :title, :project_goal_amt

  @@all = []

  def initialize(creator, title, p_g_amt)
    @creator = creator
    @title = title
    @project_goal_amt = p_g_amt
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select { |pledge| pledge.project == self}
  end

  def pledge_amounts
    total = 0.0
    self.pledges.each { |pledge| total += pledge.amount }
    total
  end

  def self.no_pledges
    self.all.select { |project| project.pledges.count == 0}
  end

  def self.above_goal
    self.all.select { |project| project.pledge_amounts > project.project_goal_amt}
  end

  def self.most_backers
    highest = 0
    output = nil
    self.all.each do |project|
      if project.pledges.count > highest
        highest = project.pledges.count
        output = project
      end
    end
    output
  end










end
