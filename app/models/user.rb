class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, 
    message: 'には英字と数字の両方を含めて設定してください', if: :password_required?
  
  validates :nickname, presence: true

  has_many :reviews
  has_many :comments

  # ゲストログインするため
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.hex(10)
      user.nickname = "GuestUser"
    end
  end

  def update_without_current_password(params, *options)
    params.delete(:current_password)
    
    if params[:password].blank? && params[:password_confirmation].blank? 
      params.delete(:password)
      params.delete(:password_confirmation)
    end
    
    result = update(params, *options)
    clean_up_passwords
    result
  end
end