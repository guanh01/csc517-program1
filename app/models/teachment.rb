class Teachment < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :course
  validates :instructor_id, uniqueness: { scope: [:course_id] }
  
  validates :instructor_id, presence: true
  validates :course_id, presence: true

end
