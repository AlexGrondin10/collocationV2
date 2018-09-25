class List < ApplicationRecord
  belongs_to :collocation
  has_many :items
end
