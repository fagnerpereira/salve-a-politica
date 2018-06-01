class Career < ApplicationRecord
  belongs_to :politic
  has_many :projects
end
