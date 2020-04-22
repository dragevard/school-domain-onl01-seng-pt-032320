# code here!
class School
  
  ROSTER = {}
  def initialize(name)
    @name = name 
  end
  
  
  def add_student(name, grade)
    if ROSTER[grade].include?(grade)
      ROSTER[grade] << name
    else 
      ROSTER[grade] = []
      ROSTER[grade] << name
    end
  end
  
  def grade(grade)
    ROSTER[grade]
  end
  
  def sort
    ROSTER.each do |key, value|
      value.sort!
    end
    ROSTER
  end
      
end