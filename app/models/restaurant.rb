class Restaurant < ApplicationRecord

  CATEGORIES = ["French", "Chinese", "Belgian", "Japanese", "Italian"] # Restaurant::CATEGORIES
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES, message: "This is not a correct category!" }, presence: true
end















