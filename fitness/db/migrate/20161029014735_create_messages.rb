class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :sent_userid
      t.string :message

      t.timestamps
    end
  end
end
