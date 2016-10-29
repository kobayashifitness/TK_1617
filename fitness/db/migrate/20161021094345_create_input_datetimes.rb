class CreateInputDatetimes < ActiveRecord::Migration
  def change
    create_table :input_datetimes do |t|

      t.timestamps
    end
  end
end
