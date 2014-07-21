class CreateThLogs < ActiveRecord::Migration
  def change
    create_table :th_logs do |t|
      t.float :temperature_celsius
      t.float :temperature_fahrenheit
      t.float :humidity
      t.float :heat_index_celsius
      t.float :heat_index_fahrenheit

      t.timestamps
    end
  end
end
