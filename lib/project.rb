class Project
  attr_accessor :backed_projects
  initialize (title)
  @title = title
  @backer = []
end
def add_backer(backer)
  @backer << backer
  backer.back_project(self)unless backer.backed_projects.include?(self)
end
end

