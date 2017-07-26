class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :name
      t.integer :duration
      t.integer :fee
      t.string :coordinator

      t.timestamps
    end
  end
end
