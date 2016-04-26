class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.float :salary
      t.string :phone_number
      t.string :ssn

      t.timestamps null: false
    end
  end
end
