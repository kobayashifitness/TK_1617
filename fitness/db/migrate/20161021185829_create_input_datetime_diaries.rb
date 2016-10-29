class CreateInputDatetimeDiaries < ActiveRecord::Migration
  def change
    create_table :input_datetime_diaries do |t|

      t.timestamps
    end
  end
end
