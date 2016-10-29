class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :user_id
      t.integer :block_userid

      t.timestamps
    end
  end
end
