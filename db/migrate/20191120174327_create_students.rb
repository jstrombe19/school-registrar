class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :student_id
      t.integer :age
      t.boolean :graduated, default: false
      t.string :major

      t.timestamps
    end
  end
end
