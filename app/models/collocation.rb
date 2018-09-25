class Collocation < ApplicationRecord
	has_many :users, dependent: :destroy
	has_many :inventories, dependent: :destroy
	has_many :lists, dependent: :destroy
end
