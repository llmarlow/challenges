require 'minitest/autorun'
require_relative 'imageblur3'

class TestAdder < Minitest::Test
  def test_blur
    image = Image.new([
      [0, 0, 1, 0, 0],
      [0, 1, 1, 1, 0],
      [1, 1, 1, 1, 1],
      [0, 1, 1, 1, 0]
    ])
    expected_image = Image.new([
      [0, 0, 1, 0, 0],
      [0, 1, 1, 1, 0],
      [1, 1, 1, 1, 1],
      [0, 1, 1, 1, 0]
    ])
    image.blur_image(3)
    return image.output_image
    assert_equal(expected_image, image)
  end


  def test_blur2
    image = Image.new([
      [0, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 1],
      [0, 0, 0, 0]
    ])
    expected_image = Image.new([
      [0, 1, 0, 0],
      [1, 1, 1, 1],
      [0, 1, 1, 1],
      [0, 0, 0, 1]
    ])

    image.blur_image(1)
    return image.output_image
    assert_equal(expected_image, image)
  end
end