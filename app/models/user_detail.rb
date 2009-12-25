class UserDetail < ActiveRecord::Base
  include UUIDHelper

  belongs_to :user, :foreign_key => :user_id
  belongs_to :destination, :foreign_key => :destination_id

  has_one :address
  has_one :phone

  accepts_nested_attributes_for :address, :reject_if => lambda { |a| a.values.all?(&:blank?) }
  accepts_nested_attributes_for :phone, :reject_if => lambda { |a| a.values.all?(&:blank?) }
  
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :date_of_joining
  validates_presence_of :date_of_birth
end
