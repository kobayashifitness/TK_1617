class RemoveDatetimeFromMuscleMass < ActiveRecord::Migration
  def change
    remove_column :muscle_masses, :datetime, :datetime
  end
end
