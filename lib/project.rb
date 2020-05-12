class Project
  attr_accessor :title
  attr_reader :backers
  def initialize(title)
    @title = title
    @backers = []
  end 
  def add_backer(backer)
      backer = Backer.new(backer)
      @backers << backer
      Backer.back_project(self)
      @backers
  end 
end 