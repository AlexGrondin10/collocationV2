class Room < ApplicationRecord
  belongs_to :collocation
  has_many :assets
end
