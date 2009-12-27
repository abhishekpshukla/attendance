class Phone < ActiveRecord::Base
  include UUIDHelper
  belongs_to :user_detail, :foreign_key => :user_detail_id

  validates_presence_of       :mobile, :message => "^Mobile number cannot be blank"
  validates_numericality_of   :mobile, :message => "^Mobile number should contain only digit"
  validates_numericality_of   :home,   :message => "^Home number should contain only digit", :allow_blank => true
  validates_numericality_of   :office, :message => "^Office number should contain only digit", :allow_blank => true
  validates_numericality_of   :fax,    :message => "^Fax number should contain only digit", :allow_blank => true

end
