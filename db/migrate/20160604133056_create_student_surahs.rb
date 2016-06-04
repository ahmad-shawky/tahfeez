class CreateStudentSurahs < ActiveRecord::Migration
  def change
    create_table :student_surahs do |t|
      t.integer :student_id
      t.integer :surah_id

      t.timestamps null: false
    end
  end
end
