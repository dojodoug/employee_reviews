class Employee
  attr_reader :name, :email, :phone
  attr_accessor :salary, :review, :satisfactory

  def initialize(name, email, phone, salary)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = []
    @satisfactory = satisfactory
  end

  def add_employee_review(review)
    @review << review
  end

  def employee_performance
    @satisfactory = true
  end

end
