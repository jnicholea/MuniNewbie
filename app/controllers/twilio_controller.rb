class TwilioController < ApplicationController

  def index
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    info = params[:user]
    @user = User.create(phone: info["phone"], bus_num: info["bus_num"], stop_id: info["stop_id"], stopping_point: info["stopping_point"])
    session[:user_id] = @user.id
    @bus_num = @user.bus_num
    #make API call to google maps to get bus status update

    #text user
    est_time = 5
    message = "Hey! Bus ##{@bus_num} is #{est_time} minutes away!"
    User.text_update(@user.phone, message)
  end

  def update

    #make api call
  end


end
