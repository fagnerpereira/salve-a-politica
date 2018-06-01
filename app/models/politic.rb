class Politic < ApplicationRecord
  has_many :careers
  has_many :declared_goods
  has_many :judicial_processes
  has_many :proposals
end
