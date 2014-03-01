class UsersController < ApplicationController
  def index
  end

  def setting
    @user = User.new
  end

  def registration
    @user = User.new
    @user.adress = params[:adress]
    @user.meil = prams[:mail]
    @user.password = 00000000 #prams[:password]
    @user.salt = 00000000 #password暗号化の処理
    @user.timing_id = 30 #params[:timing_id]
    @user.total_depth = 20 #現在の積雪量を取得（フォームから)
    @user.latitude = @user.conver_address_to_lat
    @user.longitude = @user.convert_address_to_lng

    if @user.save
      render :text => "success"
    else
      render :text => "failed"
    end
  end
end
