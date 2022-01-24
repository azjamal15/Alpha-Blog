class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 100 } #makes sure title is present for article to be saved 
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end