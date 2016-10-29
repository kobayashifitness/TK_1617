class CreateInputDatetimeProteins < ActiveRecord::Migration
  def change
    create_table :input_datetime_proteins do |t|

      t.timestamps
    end
  end
end
