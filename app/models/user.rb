class User < ApplicationRecord
  belongs_to :collocation
  has_many :transactions
end
