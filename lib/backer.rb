class Backer 
  attr_reader :name
  def initialize(name)
    @name = name
  end 
  
  def back_project(project)
    ProjectBacker.new(project, self)
  end 
  
  def backed_projects 
    ProjectBacker.all.select do |projectbacker|
      projectbacker.select do |project| 
        project.backer == self 
      end 
    end 
    
  end 
end 