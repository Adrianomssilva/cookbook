class Group < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
end
