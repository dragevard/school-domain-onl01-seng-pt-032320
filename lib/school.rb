# code here!
class School
  
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  
  def add_student(name, grade)
    if @roster[grade].include?(grade)
      @roster[grade] << name
    else 
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |key, value|
      value.sort!
    end
    @roster
  end
      
end