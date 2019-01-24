class AddStudentIdToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :student_id, :integer
    remove_column :courses, :instructor, :string
    add_column :courses, :instructor_id, :integer
  end
end
