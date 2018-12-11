class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :buisiness_name
      t.string :api_id
      t.string :lat
      t.string :long
      t.string :address
      t.string :zip

      t.timestamps
    end
  end
end
