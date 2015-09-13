class Employee
attr_reader :name, :email, :phone, :salary

  def initialize(name, email, phone, salary)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
  end

  def name
    @name
  end

  def email
    @email
  end

  def phone
    @phone
  end

  def salary
    @salary
  end

end
