# To change this template, choose Tools | Templates
# and open the template in the editor.

#require 'rubygems'
#require 'uuidtools'
#
#module UUIDHelper
#  include UUIDTools
#  def before_create()
#    #self.id = UUID.timestamp_create().to_s
#    self.id = UUIDTools::UUID.timestamp_create().to_s
#  end
#end

# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'rubygems'
require 'uuidtools'

module UUIDHelper
  def before_create()
    #self.id = UUID.timestamp_create().to_s
    self.id = UUIDTools::UUID.timestamp_create().to_s
  end
end

