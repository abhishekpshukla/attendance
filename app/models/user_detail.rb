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

  before_create :save_employee_id

  # WHILE UPDATING THE USER PROFILE....
  def edit_user_detail_address_attributes=(address_attribute)
    address.attributes = address_attribute
    address.save(false)
  end

  # WHILE UPDATING THE USER PROFILE....
  def edit_user_detail_phone_attributes=(phone_attribute)
    phone.attributes = phone_attribute
    phone.save(false)
  end

  private

  def save_employee_id
    last_employee_id = UserDetail.find(:last)
    if last_employee_id.nil?
      # #note: the first 4 id is reservered...
      self.employee_id = 5
    else
      current_employee_id = last_employee_id.employee_id.to_i + 1
      exists              = UserDetail.find_by_employee_id(current_employee_id)
      #Just to make sure that the id does not exists
      save_employee_id unless exists.blank? and return
      self.employee_id = last_employee_id.employee_id.to_i+1
    end
  end
end
