class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :student_id
      t.integer :course_id
      t.integer :grade
      t.string :status

      t.timestamps null: false
    end
  end
end
