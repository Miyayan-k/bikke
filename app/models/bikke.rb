class Bikke < ApplicationRecord
  with_options presence: true do
    validates :bike
    validates :review
    with_options numericality: {
      greater_than_or_equal_to: 1,
      less_than_or_equal_to: 5
    } do
      validates :recommend
      validates :comfort
      validates :fuel
      validates :maintenance
      validates :cost
      validates :speed
      validates :look
    end
  end

  with_options numericality: { other_than: 0 } do
    validates :displacement_id
    validates :maker_id
    validates :type_id
  end

  belongs_to :user
  has_many :comments
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :displacement
  belongs_to :maker
  belongs_to :type
end
