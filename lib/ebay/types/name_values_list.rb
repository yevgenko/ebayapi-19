
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :name, 'Name', :optional => true
    #  array_node :value, 'Value', :optional => true
    #  text_node :source, 'Source', :optional => true
    class NameValuesList
      include XML::Mapping
      include Initializer
      root_element_name 'NameValueList'
      text_node :name, 'Name', :optional => true
      array_node :value, 'Value', :default_value => []
      text_node :source, 'Source', :optional => true
    end
  end
end


