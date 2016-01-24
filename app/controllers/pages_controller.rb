class PagesController < ApplicationController

	def index
		@result = Page.all_route_stops
	end
end