class Course < ApplicationRecord
  has_many :students
  def self.course_name
    # return Course.pluck(:name,:id)
    return Course.all.select(:id,:name)
  end
end
