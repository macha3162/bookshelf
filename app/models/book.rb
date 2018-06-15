class Book < ApplicationRecord
  extend FriendlyId
  friendly_id :title #, use: :slugged

  has_many :loans

end
