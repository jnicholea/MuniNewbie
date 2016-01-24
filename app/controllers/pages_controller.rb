class PagesController < ApplicationController

	def index
		@stops = Page.all_route_stops
		@result = Page.all_route_stops
	end
end