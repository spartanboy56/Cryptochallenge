require 'base64'
require_relative "Decoders"

include Decoders

module Encoders

def hex_to_string(string)
hex = string.scan(/../).map {|x| x.hex }.pack('c*')
end	

def hex_to_base64(to_convert)
base64_number = Base64.strict_encode64(hex_to_string(to_convert))
end








end