class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :image
      t.boolean :under_age
      t.float :age
      t.string :joining_date

      t.timestamps null: false
    end
  end
end
