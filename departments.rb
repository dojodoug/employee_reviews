class Departments
  attr_accessor :name, :dept_name

  def initialize(dept_name)
      @dept_name = dept_name
      @employees = []
  end

  def employees
    @employees
  end

  def add_employee(name, email, phone, salary)
    @employees << Employee.new(name, email, phone, salary)
  end

  def get_employee_name
    @employees.each do |i|
      return i.name
    end
    false
  end

  def get_employee_salary
    @employees.each do |i|
      return i.salary
    end
    false
  end


end
