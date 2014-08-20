class Doctor < ActiveRecord::Base
  belongs_to :doctorable, polymorphic: true
  validates :name, presence: true
end
