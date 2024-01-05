class StudentResponse < ApplicationRecord
  belongs_to :completed_test
  belongs_to :question
  belongs_to :option

  def correct?
    self.option.correct
  end
end
