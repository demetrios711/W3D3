# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord

  has_many(
    :enrolled_courses,
    class_name: 'Enrollment',
    foreign_key: :user_id,
    primary_key: :id,
    optional: true
  )

  belongs_to(
    :instructor,
    class_name: 'Course',
    foreign_key: :instructor_id,
    primary_key: :id,
    optional: true
  )

  belongs_to(
    :enrollments, 
    class_name: 'Course',
    foreign_key: :student_id, 
    primary_key: :id,
    optional: true
  )

end
