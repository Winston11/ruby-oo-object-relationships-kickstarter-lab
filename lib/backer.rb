class Backer

    attr_reader :name, :project

    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        ProjectBacker.new(project, self) 
    end

    def backed_projects
        back_project.map.all
    end

end