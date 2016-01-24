class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   "phone"
      t.string   "stopping_point"
      t.integer  "stop_id"
      t.integer  "bus_num"
      t.timestamps
    end
  end
end
