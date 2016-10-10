require 'base64'

module Encoders

def hex_to_string(string)
hex = string.scan(/../).map {|x| x.hex }.pack('c*')


end	

def hex_to_base64(to_convert)


base64_number = Base64.strict_encode64(hex_to_string(to_convert))
end

def fixed_XOR(hex, xor)

fixed_XOR_string = (hex.to_i(16) ^ xor.to_i(16)).to_s(16)

end

def xor_cipher(hex)
puts (hex.to_i(16) ^ 3).to_s(16)


end	

end