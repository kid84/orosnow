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
    @user.salt = #password暗号化の処理
    @user.timing_id = params[:timing_id]
    @user.lat = #緯度
    @user.lan = #経度

    if @user.save
      #登録後の処理
    else
      #登録失敗後の処理
    end
  end
end
