class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.integer :profile_id
      t.integer :sent_userid

      t.timestamps
    end
  end
end
