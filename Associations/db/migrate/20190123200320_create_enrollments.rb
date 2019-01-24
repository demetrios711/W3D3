class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.integer :user_id, null: false
      t.integer :course_id, null: false
      t.timestamps
    end
  end
end
