class User < ActiveRecord::Base
  include UUIDHelper
  acts_as_authentic

  has_one :user_detail
  
  accepts_nested_attributes_for :user_detail, :reject_if => lambda { |a| a.values.all?(&:blank?) }

  named_scope :find_all_user_except_admin, {:conditions => {:is_admin => false}}

  # THE BELOW MENTIONED FUCTION WILL HIT WHEN A USER WILL UPDATE PROFILE....
  def edit_user_detail_attributes=(user_detail_attributes)
    user_detail.attributes = user_detail_attributes
    user_detail.save(false)
  end
  
end
