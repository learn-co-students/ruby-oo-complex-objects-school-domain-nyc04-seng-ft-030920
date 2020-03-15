# code here!
class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

#adding a student

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end
    

    def grade(student_grade)
        roster[student_grade]
    end

  # this method should arrange the students in each grade by alphabetical order
    def sort
    sorted = {}
    roster.each {|grade, students|
      sorted[grade] = students.sort}
    sorted
    end
end

