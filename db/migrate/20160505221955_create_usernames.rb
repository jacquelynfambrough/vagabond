class CreateUsernames < ActiveRecord::Migration
  def change
    create_table :usernames do |t|
      t.string :city_name
      t.integer :ratings
      t.string :description

      t.timestamps null: false
    end
  end
end
