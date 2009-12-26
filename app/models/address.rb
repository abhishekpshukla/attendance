class Address < ActiveRecord::Base
  include UUIDHelper
  belongs_to :user_detail, :foreign_key => :user_detail_id

  validates_presence_of :address1, :message => "^Address1 cannot be blank"
  validates_presence_of :city, :message => "^City cannot be blank"
  validates_presence_of :state, :message => "^State cannot be blank"
  validates_presence_of :country, :message => "^Country cannot be blank"
  validates_presence_of :zip_code, :message => "^Zip Code cannot be blank"
end
