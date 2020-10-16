class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates_inclusion_of :category, :in => ['chinese', 'french', 'italian', 'japanese', 'belgian']
end
