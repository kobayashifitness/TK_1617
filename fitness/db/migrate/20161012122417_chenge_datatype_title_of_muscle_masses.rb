class ChengeDatatypeTitleOfMuscleMasses < ActiveRecord::Migration
  def change
        change_column :muscle_masses, :datetime, :datetime
  end
end
