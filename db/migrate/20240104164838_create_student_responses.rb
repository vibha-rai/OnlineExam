class CreateStudentResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :student_responses do |t|
      t.references :completed_test, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.string :answer

      t.timestamps
    end
  end
end
