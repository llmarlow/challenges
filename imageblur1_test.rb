require 'minitest/autorun'
require_relative 'imageblur1'

class TestImage < MiniTest::Test
  def test_output_image
    image = Image.new([
      [0,0,0,0],
      [0,1,0,0],
      [0,0,0,1],
      [0,0,0,0]
    ])

    assert image.output_image 
    expected = [
      [0,0,0,0],
      [0,1,0,0],
      [0,0,0,1],
      [0,0,0,0]
    ]

    assert_equal expected, image.image
  end 

end 