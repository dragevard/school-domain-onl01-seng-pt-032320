# code here!
class School
  def initialize(name)
    @name = name 
  end
  
  ROSTER = {}
  
  def add_student(name, grade)
    if ROSTER[grade].include?(grade)
      ROSTER[grade] << name
    else 
      ROSTER[grade] = []
      ROSTER[grade] << name
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