class Page < ActiveRecord::Base
  validates :phone, presence: true
  validates :bus_num, presence: true
  validates :stop_id, presence: true

  def self.realtime_update
  client = SFBATransitAPI.client ENV['511_AUTH_TOKEN']

	agencies = client.get_stops_for_route(agency_name: "SF-MUNI", route_code: "19", route_direction_code: "Outbound")

	stops = agencies[0]["routes"][0]["route_directions"][0]["stops"]

	my_stop = stops.find { |stop| stop["name"] =~ /Polk.+Sutter/ }

	p @result = client.get_next_departures_by_stop_code("16002")[0]["routes"][0]["route_directions"][0]["stops"][0]["departure_times"]
  p "Jenna just found the next Muni bus to leave from the Polk and Sutter station"
  @result
  end

end
