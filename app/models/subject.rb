class Subject < ApplicationRecord
  has_many :questions
  has_many :completed_tests

  def completed_tests_count
    completed_tests.count
  end
end
