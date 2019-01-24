class Item < ApplicationRecord
# has_many :reviews, through: users
# has_many :likes, through: users
# has_many :comments, thorough: users
has_many :item_images
accepts_nested_attributes_for :item_images
# has_many :transactions, thorough: users

belongs_to :category, optional: true
belongs_to :size, optional: true
belongs_to :brand, optional: true
belongs_to :seller, class_name: "User", optional: true
belongs_to :buyer, class_name: "User", optional: true

scope :newest, -> {order(created_at: :desc)}
enum status:{nonreleased: 0, released: 1}
end
