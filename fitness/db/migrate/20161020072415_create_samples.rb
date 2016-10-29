class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :moji
      t.integer :kazu
      t.datetime :hizuke

      t.timestamps
    end
  end
end
