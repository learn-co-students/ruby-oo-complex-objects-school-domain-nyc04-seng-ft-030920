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
  
    rost = @roster.sort.to_a.sort.to_h
    roaster = rost[9].sort
    rost[9] = roster
    rost

end

end