class AddRemoveToEmployee < ActiveRecord::Migration[5.2]
  def change
    remove_columns :employees, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  end
end
