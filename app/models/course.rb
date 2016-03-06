class Course < ActiveRecord::Base
  has_many :enrollments, dependent: :destroy
  has_many :materials , dependent: :destroy
  has_many :students, through: :enrollments
  has_many :teachments, dependent: :destroy
  has_many :instructors, through: :teachments
  
  validates :course_number, :title, :start_date, :end_date, :status, presence: true
  
  
  def self.search(search,searchby)
    if searchby =="Instructor"
      results = Array.new
      users = Instructor.where("name LIKE ?","%#{search}%")
      if users.count == 0
        return results
      else
        users.each do |user|
          if user.is_a? Instructor
            teachments = user.teachments
            teachments.each do |teachment|
              course = teachment.course
              if course && (!results.include? course)
                results << course
              end
            end
          end
        end
      end
      return results
    end
    if searchby =="Course number"
      searchby = "course_number"
      return Course.where(course_number: search)
    elsif searchby =="Status"
      where(status: search)
    else
      where("#{searchby} LIKE ?", "%#{search}%")
    end
  end
  
end
