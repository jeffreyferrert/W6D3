class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, index: true  
      t.string :email, null: false

      t.timestamps
    end
  end
end
