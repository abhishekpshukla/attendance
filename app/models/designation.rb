class Designation < ActiveRecord::Base
  has_many :user_details

  validates_uniqueness_of :name
end
