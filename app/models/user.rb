class User < ActiveRecord::Base
  require 'geocoder'

  #緯度・経度等の設定に使用
#  attr_accessible :address, :latitude, :longitude
#  geocoded_by :address
#  geocoded_by :address
#  after_validation :geocode

  validates :mail, presence: {message: "メールアドレスを入力してください。"}
  validates :address, presence: {message: "住所を入力してください。"}


  def convert_address_to_lat
    Geocoder.search(self.address).first.geometry["location"]["lat"]
  end

  def convert_address_to_lng
    Geocoder.search(self.address).first.geometry["location"]["lng"]
  end
end
