require 'minitest/autorun'
require 'minitest/pride'
require './employee_review.rb'

class ReviewTest < Minitest::Test

  def self.test_order
    :alpha
  end

  def test_initialize
    assert Departments.new(name)
  end

  def test_new_employee
    assert Employee.new(name: nil, email: nil, phone: nil, salary: nil)
  end

end
