class UsersController < ApplicationController
  def index
  end

  def setting
  end

  def registration
    @user = User.new
    @user.adress = params[:adress]
    @user.meil = prams[:mail]
    @user.password = prams[:password]
    @user.salt = 1 #password暗号化の処理
    @user.timing_id = params[:timing_id]
    @user.total_depth = 20 #現在の積雪量を取得（フォームから)
    @user.latitude = @user.conver_address_to_lat
    @user.longitude = @user.convert_address_to_lng

    if @user.save
      #登録後の処理
    else
      #登録失敗後の処理
    end
  end
end
