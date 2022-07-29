class Comment < ApplicationRecord
  belongs_to :pet

  validates :author, presence: true
  validates :content, presence: true
end
