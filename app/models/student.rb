class Student < ApplicationRecord
  belongs_to :course
  @@current_user = false
  def self.check_false
    @@current_user = false
  end
  def self.check_true
    @@current_user = true
  end
  def self.check
    return @@current_user
  end
end
