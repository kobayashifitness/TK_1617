class CreateProteins < ActiveRecord::Migration
  def change
    create_table :proteins do |t|
      t.integer :user_id
      t.integer :protein_intake
      t.string :datetime

      t.timestamps
    end
  end
end
