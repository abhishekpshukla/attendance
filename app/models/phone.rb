class Phone < ActiveRecord::Base
  include UUIDHelper

  belongs_to :user_detail, :foreign_key => :user_detail_id
end
