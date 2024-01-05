class CreateCompletedTests < ActiveRecord::Migration[7.0]
  def change
    create_table :completed_tests do |t|
      t.references :student, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
