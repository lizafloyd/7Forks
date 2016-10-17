class Topic < ApplicationRecord
  has_many :forks
  has_many :tools
end
