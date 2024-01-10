class Question < ApplicationRecord
  belongs_to :subject
  has_many :options

  validates :content, presence: true
  validates_associated :options
end
