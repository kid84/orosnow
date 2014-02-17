class User < ActiveRecord::Base
  belongs_to :timing
  
  validates :mail, presence: {message: "メールアドレスを入力してください。"}
  validates :address, presence: {message: "住所を入力してください。"}
end
