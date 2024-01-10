class SubjectsController < ApplicationController
  before_action :find_subject, only: [:show_test, :submit_test, :result]

  def index
    @subjects = Subject.all
    @student = Student.find_by(id: 1)
    @completed_tests = @student.completed_tests.includes(:subject, :student_responses)
  end

  def show_test
    @subject = Subject.find(params[:id])
    @completed_test = CompletedTest.find_by(student: Student.first, subject: @subject)

    if @completed_test
      redirect_to result_subject_path(@subject, test_id: @completed_test.id)
    else
      @questions = @subject.questions
      @completed_test = CompletedTest.new(student: Student.first, subject: @subject)
      @student_responses = @questions.map { |question| @completed_test.student_responses.build(question: question) }
    end
  end

  def submit_test
    @subject = Subject.find(params[:id])
    @completed_test = CompletedTest.new(student: Student.first, subject: @subject)

    if @completed_test.save
      params[:completed_test][:student_responses].each do |_, response_params|
        question = Question.find(response_params[:question_id])
        option = Option.find(response_params[:option_id])
        @completed_test.student_responses.create(question: question, option: option)
      end

      redirect_to result_subject_path(@subject, test_id: @completed_test.id)
    else
      @completed_test.build_responses_for_subject(@subject)
      flash[:error] = 'Error submitting the test.'
      render :show_test
    end
  end



  def result
    @completed_test = CompletedTest.find(params[:test_id])
    @student_responses = @completed_test.student_responses
    @total_marks = calculate_total_marks
    @percentage_correct = calculate_percentage_correct
  end

  private

  def find_subject
    @subject = Subject.find(params[:id])
  end

  def calculate_total_marks
    @student_responses.select(&:correct?).count
  end

  def calculate_percentage_correct
    (@total_marks / @student_responses.count.to_f) * 100
  end


  def completed_test_params
    params.require(:completed_test).permit(
      student_responses_attributes: [:question_id, :option_id]
    )
  end
end
