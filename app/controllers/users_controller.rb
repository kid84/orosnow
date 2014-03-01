class UsersController < ApplicationController
  def index
  end

  def setting
    @user = User.new
  end

  def registration
    @user = User.new
    @user.address = params[:address]
    @user.mail = params[:mail]
    @user.password = 00000000 #prams[:password]
    @user.salt = 00000000 #password暗号化の処理
    @user.timing_id = 30 #params[:timing_id]
    @user.total_depth = 30 #params[:total_depth]
    @user.latitude = 35.65 #@user.convert_address_to_lat
    @user.longitude = 139.736 #@user.convert_address_to_lng

    if @user.save!
      render :text => "success"
    else
      render :text => "failed"
    end
  end
end
