class ChangeTable < ActiveRecord::Migration[7.0]
  def change

      rename_column :users, :name, :username

      remove_column :users, :email, :string

  end
end
