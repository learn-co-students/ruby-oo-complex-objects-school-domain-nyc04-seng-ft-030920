require 'pry'

class School
    attr_reader :school_name
    attr_accessor :roster, :student_name, :grade

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        #how can we figure out if a grade key already exists?
        if !@roster[grade]
            @roster[grade] = [student_name]
            # @roster[grade] << student_name
        else 
            @roster[grade] << student_name
        end 

    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        sorted_roster = {}
        @roster.each { |key, value|
            sorted_roster[key] = value.sort
        }
        sorted_roster
    end 
    
end

# school = School.new("middle school")
# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 9)
# school.add_student("Screech", 10)
# school.add_student("Bart", 10)
# school.roster
