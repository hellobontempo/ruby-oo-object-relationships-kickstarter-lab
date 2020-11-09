class Backer

    attr_reader :name, :project

    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select {|project| project.backer == self}
    end

    def backed_projects
        projects.collect {|backer| backer.project}
    end
end

#Appointment.all.select {|appointment| appointment.patient == self}
#returns all appointments associated with this patient
#return all projects associated with this Project instance
