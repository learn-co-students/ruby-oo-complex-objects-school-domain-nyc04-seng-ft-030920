require 'pry'
class School
    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        self.roster.each {|grade, students| students.sort!}
        
    end

end