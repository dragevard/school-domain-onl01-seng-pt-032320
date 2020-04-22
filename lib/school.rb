# code here!
class School
  
  attr_reader :roster
  def initialize(name)
    @name = name 
    @roster = {}
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