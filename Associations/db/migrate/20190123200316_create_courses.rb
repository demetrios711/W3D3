class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :instructor, :name, null: false
      t.timestamps
    end
    add_index :courses, :instructor
  end
end
