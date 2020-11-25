class Project 
attr_reader :title 
def initialize(title)
    @title = title 
end

def add_backer(backer)
    ProjectBacker.new(self, backer)
end

def backers
 project_backers = ProjectBacker.all.select do |b|
        b.project == self 
        end
        project_backers.collect do |b|
            b.backer 
        end
end

end