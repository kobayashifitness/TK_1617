class ChengeDatatypeTitleOfProteins < ActiveRecord::Migration
  def change
      change_column :proteins, :datetime, :datetime
  end
end
