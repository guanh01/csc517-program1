class Instructor < User
  has_many :teachments, dependent: :destroy
  has_many :courses, through: :teachments 
  
  
  def only_instructor?
    teachments = self.teachments
    teachments.each do |teachment|
      course = teachment.course
      if course.teachments.count < 2
        return true
      end
    end
    return false 
  end
end
