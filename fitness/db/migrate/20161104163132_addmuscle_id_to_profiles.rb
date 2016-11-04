class AddmuscleIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :muscle_id, :integer
    add_column :profiles, :public_profile, :integer
  end
end
