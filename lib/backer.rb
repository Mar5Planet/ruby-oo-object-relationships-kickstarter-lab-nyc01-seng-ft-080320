class Backer 
  attr_reader :name
  def initialize(name)
    @name = name
  end 
  
  def back_project(project)
    ProjectBacker.new(project, self)
  end 
  
  def backed_projects 
    pb = ProjectBacker.all.select do |projectbacker|
       projectbacker.backer == self 
    end 
    pb.map do |project|
      
    end 
    
  end 
end 