class CreateMymenus < ActiveRecord::Migration
  def change
    create_table :mymenus do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
