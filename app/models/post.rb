class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_one :title
  has_one :description
end
