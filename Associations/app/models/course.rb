# == Schema Information
#
# Table name: courses
#
#  id            :bigint(8)        not null, primary key
#  name          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  student_id    :integer
#  instructor_id :integer
#

class Course < ApplicationRecord
  has_many(
    :students,
    class_name: 'User',
    foreign_key: :student_id,
    primary_key: :id
  )
  has_many(
    :instructor,
    class_name: 'User',
    foreign_key: :instructor_id,
    primary_key: :id
  )
  has_many(
    :enrollments,
    class_name: 'Enrollment',
    foreign_key: :course_id,
    primary_key: :id 
  )
end
