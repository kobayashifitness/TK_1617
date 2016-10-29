class RenameTitleColumToEvents < ActiveRecord::Migration
  def change
    rename_column :events, :class, :event_class
  end
end
