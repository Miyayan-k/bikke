class Review < ApplicationRecord
  with_options presence: true do
    validates :bike
    validates :year, length: { is: 4 }  
    validates :comfort
    validates :fuel
    validates :maintenance
    validates :cost
    validates :speed
    validates :look
    validates :recommend
    validates :content
  end

  # ActiveHashの空白保存不可を付与
  with_options numericality: { other_than: 0 } do
    validates :displacement_id
    validates :maker_id
    validates :type_id
  end

  belongs_to       :user
  has_many         :comments
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :displacement
  belongs_to :maker
  belongs_to :type
end
