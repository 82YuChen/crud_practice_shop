class Shop < ApplicationRecord
    validates :brand, presence: true
    validates :product, presence: true
    validates :amount, presence: true
end
