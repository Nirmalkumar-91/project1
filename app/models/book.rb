class Book < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 50}
    validates :desc, presence: true, length: { minimum:10, maximum: 300}
    validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 1, less_than: 100 }
end