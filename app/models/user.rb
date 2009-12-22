class User < ActiveRecord::Base
  include UUIDHelper
  acts_as_authentic
end
