require 'base64'

module Encoders

def hex_to_string(string)
hex = string.scan(/../).map {|x| x.hex }.pack('c*')


end	

def hex_to_base64(to_convert)


base64_number = Base64.strict_encode64(hex_to_string(to_convert))
end

def fixed_XOR(hex, key)

fixed_XOR_string = (hex.to_i(16) ^ key.to_i(16)).to_s(16)

end

def xor_cipher(hex)
	result_array = []
	pre_cipher = 3
	hex.each_byte do |c|
		pre_cipher ^= c
		puts pre_cipher
		result_array << pre_cipher
    end		
	p result_array	
	
	puts cipher_result = pre_cipher.to_s(16)
	cipher_result
end	

def single_xor_cracker(key)
	plain = '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'	

	array_count = []
	puts plain
	binary = hex_to_string(plain)

	binary.each_byte { |x| array_count.push((x ^ i).char)
	}

	return array_count.join
		
end	


end