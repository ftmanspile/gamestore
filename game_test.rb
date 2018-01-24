require "minitest/autorun"
require_relative "gamestore.rb" 
class TestBook < Minitest::Test

	def test_1_is_1
		assert_equal(1,1)
	end

	def test_nes
		assert_equal(53.40,console("NES"))
	end

	def test_atari_2600
		assert_equal(33.75,console("Atari 2600"))
	end
end