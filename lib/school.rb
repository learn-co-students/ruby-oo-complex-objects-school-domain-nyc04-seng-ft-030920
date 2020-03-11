require "pry"
class School
    attr_reader :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade_no)
        @roster[grade_no] ? @roster[grade_no] << student : @roster[grade_no] = [student]
    end

    def grade(grade_no)
        @roster[grade_no]
    end

    def sort
        @roster.each_value do |student_array|
            student_array.sort!
        end
    end
end