class AddCoulmnsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :contact_phone, :string
    add_column :students, :address, :string
    add_column :students, :school_name, :string
    add_column :students, :other_data, :text
  end
end
