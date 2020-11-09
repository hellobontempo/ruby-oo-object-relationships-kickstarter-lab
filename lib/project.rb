class Project
    attr_reader :title

    def initialize (title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers_projects
        ProjectBacker.all.select {|backer| backer.project == self}
    end

    def backers
        backers_projects.collect {|project| project.backer}
    end

end

#Appointment.all.select {|appointment| appointment.patient == self}
#returns all appointments associated with this patient
#return all projects associated with this Project instance