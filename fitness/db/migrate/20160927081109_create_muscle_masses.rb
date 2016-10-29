class CreateMuscleMasses < ActiveRecord::Migration
  def change
    create_table :muscle_masses do |t|
      t.integer :profile_id
      t.float :muscle_mass
      t.float :l_arm
      t.float :r_arm
      t.float :l_leg
      t.float :r_leg
      t.float :body
      t.float :fat
      t.string :datetime

      t.timestamps
    end
  end
end
