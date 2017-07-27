class Course < ApplicationRecord
  has_many :students, dependent: :destroy
  def self.course_name
    return Course.all.select(:id,:name)
  end
end
