class Enrollment < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  validates :student_id, uniqueness: { scope: [:course_id] }
  
  validates :student_id, presence: true
  validates :course_id, presence: true
  validates :status, presence: true
end
