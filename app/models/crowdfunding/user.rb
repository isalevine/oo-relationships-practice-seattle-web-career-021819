class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def create(title, p_g_amt)
    Project.new(self, title, p_g_amt)
  end

  def self.highest_pledge
    highest_pledge_amount = 0
    output_user = nil
    Pledge.all.each do |pledge|
      if pledge.amount > highest_pledge_amount
        highest_pledge_amount = pledge.amount
        output_user = pledge.user
      end
    end
    output_user
  end

  def pledges
    Pledge.all.select { |pledge| pledge.user == self }
  end

 def self.multi_pledger
   User.all.select { |user| user.pledges.count >= 2 }
 end

 def self.project_creator
   User.all.select { |user| Pledge.users.include?(user) }
 end






end
