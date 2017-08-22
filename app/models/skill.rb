class Skill < ApplicationRecord
  validates :name,
            presence: true
  validates :description,
            length: { maximum: 99 }
  has_many :projects, dependent: :destroy
end
