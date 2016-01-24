class TwilioController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    info = params[:user]
    @user = User.create(phone: info["phone"], bus_num: info["bus_num"], stop_id: info["stop_id"], stopping_point: info["stopping_point"])
    @bus_num = @user.bus_num
    #make API call to 511 to get bus status update

    #text user
    User.text_update(@user.phone, '5')
  end
end
