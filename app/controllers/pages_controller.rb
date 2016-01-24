class PagesController < ApplicationController

	def index
		@result = Page.realtime_update
	end
end