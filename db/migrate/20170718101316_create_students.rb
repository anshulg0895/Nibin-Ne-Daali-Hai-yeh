class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.string :father
      t.date :dob
      t.belongs_to :course

      t.timestamps
    end
  end
end
