class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype
  has_many :prototypes,  dependent: :destroy


  validates :content, presence: true

end
