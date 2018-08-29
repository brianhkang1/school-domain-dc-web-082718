class School

  def initialize(name_of_school)
    @name_of_school = name_of_school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @name = name
    @grade = grade

    if @roster[grade] != nil
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
  end

end
