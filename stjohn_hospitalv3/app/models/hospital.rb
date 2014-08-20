class Hospital < ActiveRecord::Base
  has_many :patients
  validates :name, presence: true
end
