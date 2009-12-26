class UserDetail < ActiveRecord::Base
  include UUIDHelper

  belongs_to :user, :foreign_key => :user_id
  belongs_to :designation, :foreign_key => :designation_id

  has_one :address
  has_one :phone

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :phone
  
  validates_presence_of :first_name, :message => "^First Name cannot be blank"
  validates_presence_of :last_name, :message => "^Last Name cannot be blank"
  validates_presence_of :date_of_joining, :message => "^Date Of Joining cannot be blank"
  validates_presence_of :date_of_birth, :message => "^Date of Birth cannot be blank"
end
