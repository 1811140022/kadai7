class Product < ApplicationRecord
    belongs_to :cart_item, dependent: :destroy, optional: true
end
