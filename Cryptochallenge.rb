require 'base64'
require_relative "Encoders"

include Encoders
include Decoders



maine_menu_rerun = true

while maine_menu_rerun == true

puts "Which encoder would you like to use? 1: Hex to Base 64 2: XOR combination"
maine_menu_choice = ""

maine_menu_choice = gets.chomp

case maine_menu_choice
when "1"
	puts "Please enter your hex number to be converted"
	hex_to_be_converted = gets.chomp

	base_64_number = Encoders.hex_to_base64(hex_to_be_converted)

when "2"
	puts "Enter hex number"
	string_number = gets.chomp
	puts "Enter key"
	string_key = gets.chomp

	puts xor_string = fixed_XOR(string_number,string_key)

when "3"
	puts "please enter the hex to be decrypted"

	decryption = gets.chomp
	puts single_XOR_key()
	

when "4"
	puts "enter the hex to be cracked"
	hex_to_be_scanned = gets.chomp


when "test"
	puts base_64_number


else
	puts "Not a valid choice!"
end	
end


