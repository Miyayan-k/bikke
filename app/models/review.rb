class Review < ApplicationRecord
  with_options presence: true do
    validates :bike
    validates :year, length: { is: 4 }
    validates :displacement_id
    validates :maker_id
    validates :type_id
    validates :comfort
    validates :fuel
    validates :maintenance
    validates :cost
    validates :speed
    validates :look
    validates :recommend
    validates :content
  end

  belongs_to       :user
  has_many         :comments, dependent: :destroy
  has_one_attached :image
  has_many         :likes, dependent: :destroy
  has_many         :liking_users, through: :likes, source: :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :displacement
  belongs_to :maker
  belongs_to :type
end
