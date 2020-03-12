class School

    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student, grade)
        # @roster << grade
        # @roster[grade] = student
        roster[grade] ||= []
        roster[grade] << student
    end
    
    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end