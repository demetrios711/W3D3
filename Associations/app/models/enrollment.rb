# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  course_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Enrollment < ApplicationRecord
  has_many(
    :students, 
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
  )
  belongs_to(
    :courses,
    class_name: 'Course',
    foreign_key: :course_id,
    primary_key: :id
  )
end
