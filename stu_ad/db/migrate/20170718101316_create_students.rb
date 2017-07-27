class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :contact
      t.string :email
      t.string :father
      t.integer :age
      
      t.timestamps
    end
  end
end
