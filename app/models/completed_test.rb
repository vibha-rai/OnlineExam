class CompletedTest < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  has_many :student_responses, dependent: :destroy

  accepts_nested_attributes_for :student_responses

  validates_uniqueness_of :subject_id, scope: :student_id
  validate :test_to_be_taken_only_once

  def test_to_be_taken_only_once
    if subject_id_changed? && student.completed_tests.exists?(subject_id: subject_id)
      errors.add(:subject_id, 'has already been taken')
    end
  end

  def percentage_correct
    total_responses = student_responses.count
    correct_responses = student_responses.select(&:correct?).count
    return 0 if total_responses.zero?
    (correct_responses / total_responses.to_f) * 100
  end

  def build_responses_for_subject(subject)
    questions = subject.questions.includes(:options)
    questions.each do |question|
      student_responses.build(question: question)
    end
    student_responses
  end

end
