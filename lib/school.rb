# code here!
class School 

    attr_accessor   :roster , :new
def initialize(new)
    @new = new
    @roster = roster
    @roster = {} 

end

def add_student(student , grade)

    if @roster.keys.include?(grade)
        @roster[grade] << student
    else 
    @roster[grade]= [ ]
     @roster[grade]  << student
    end
end 

def grade(grade)
    p @roster[grade]
end

def sort
  
    r = @roster.sort.to_a.sort.to_h
    r2 = r[9].sort
    r[9] = r2
    r

end

end