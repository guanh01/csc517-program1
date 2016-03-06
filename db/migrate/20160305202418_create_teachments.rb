class CreateTeachments < ActiveRecord::Migration
  def change
    create_table :teachments do |t|
      t.integer :instructor_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
