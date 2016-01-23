class User < ActiveRecord::Base
  validates :phone, presence: true
  validates :bus_num, presence: true
  validates :stop_id, presence: true
end
