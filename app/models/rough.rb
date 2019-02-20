class Rough < ApplicationRecord
  # ActiveStrage
  has_one_attached :image
  # ActiveStrage
  has_one_attached :rough
  # Active TEXT
  has_rich_text :content
end
