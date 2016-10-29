class AddCommentToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :comment, :string
  end
end
