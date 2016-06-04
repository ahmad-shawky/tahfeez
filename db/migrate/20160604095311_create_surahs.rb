class CreateSurahs < ActiveRecord::Migration
  def change
    create_table :surahs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
