class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.float :weight
      t.string :datetime
      t.integer :profile_id

      t.timestamps
    end
  end
end
