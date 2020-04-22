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
end