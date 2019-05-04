class Backer
  attr_reader :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(project)
    @back_project << project
    project.add_backer(self)unless project.backer.include?(self)
  end
end
