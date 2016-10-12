require 'base64'
require_relative "Encoders"

include Encoders

module Decoders

def fixed_XOR(hex, key)

fixed_XOR_string = (hex.to_i(16) ^ key.to_i(16)).to_s(16)

end

def single_XOR_key()
	original = '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'
	plain = hex_to_string(hex)
	
end



end