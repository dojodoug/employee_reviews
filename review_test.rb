require 'minitest/autorun'
require 'minitest/pride'
require './employee_review.rb'
require './departments.rb'

class ReviewTest < Minitest::Test

  def self.test_order
    :alpha
  end

  def test_initialize
    assert Departments.new("Executive")
  end

  def test_create_new_employee
    assert Employee.new("Tyrell", "tyrell@evilcorp.com", "919-555-8888", 150000)
  end

  def test_add_employee_to_dept
    dept = Departments.new("IT")
    assert dept.add_employee("Elliot", "elliot@mrrobot.com", "919-444-777", 50000)
  end

  def test_get_employee_name
    dept = Departments.new("IT")
    dept.add_employee("Elliot", "elliot@mrrobot.com", "919-444-777", 50000)
    assert dept.get_employee_name == "Elliot"
  end

  def test_get_employee_salary
    dept = Departments.new("IT")
    dept.add_employee("Elliot", "elliot@mrrobot.com", "919-444-777", 50000)
    assert dept.get_employee_salary == 50000
  end

end
