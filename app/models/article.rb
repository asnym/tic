class Article < ApplicationRecord
  has_rich_text :content
  has_many :reviews
  belongs_to :user
end
