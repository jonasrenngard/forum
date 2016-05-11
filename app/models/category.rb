class Category < ActiveRecord::Base
  has_many :categories
  has_many :topics
  belongs_to :category

  scope :root, -> { where category_id: nil }

  def parent
    category
  end
end
