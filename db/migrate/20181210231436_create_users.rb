class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "email", :null => false
      t.column "password", :string
      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
end
