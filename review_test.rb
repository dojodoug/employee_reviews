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

  def test_get_dept_name
    dept = Departments.new("R&D")
    assert_equal "R&D", dept.dept_name
  end

  def test_total_salary_for_dept
    dept = Departments.new("HR")
    dept.add_employee("Elliot", "elliot@mrrobot.com", "919-999-1111", 50000)
    dept.add_employee("Darlene", "darlene@mrrobot.com", "919-222-3333", 150000)
    dept.add_employee("Gideon", "gideon@allsafe.com", "919-444-5555", 75000)
    assert_equal dept.total_salary_for_dept, 275000
  end

  def test_add_employee_review
    employee = Employee.new("Angela", "angela@allsafe.com", "919-333-4444", 60000)
    review = "Angela is a very positive person and encourages those around him, but she has not done well technically this year.  There are two areas in which Angela has room for improvement.  First, when communicating verbally (and sometimes in writing), she has a tendency to use more words than are required.  This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion.

    Second, when discussing new requirements with project managers, less of the information is retained by Angela long-term than is expected.  This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate.  This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.
    "
    assert employee.review << review
  end

end
