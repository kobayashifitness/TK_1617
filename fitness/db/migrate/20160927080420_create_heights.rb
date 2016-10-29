class CreateHeights < ActiveRecord::Migration
  def change
    create_table :heights do |t|
      t.float :height
      t.string :datetime
      t.integer :profile_id

      t.timestamps
    end
  end
end
