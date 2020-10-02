class AddnumberTo < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :number, :integer, null: false
  end
end
