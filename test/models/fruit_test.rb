require "test_helper"

class FruitTest < ActiveSupport::TestCase
  fixtures :fruits

  test "fruit attributes must not be empty" do
    fruit = Fruit.new
    assert fruit.invalid?
    assert fruit.errors[:name].any?
    assert fruit.errors[:color].any?
    assert fruit.errors[:flavor].any?
    assert fruit.errors[:weight].any?
    assert fruit.errors[:price].any?  
    assert fruit.image_url.nil?
  end

  test "fruit price must be positive" do
    fruit = Fruit.create(name: "my fruit", color: "xxx", flavor: "yyy", weight:1, availability: true, image_url: "zzz.jpg")

    fruit.price = -1
    assert fruit.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      fruit.errors[:price]

    fruit.price = 0
    assert fruit.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      fruit.errors[:price]

    fruit.price = 1
    assert fruit.valid?
  end

  def new_product(image_url)
    Fruit.new(name: "my fruit", color: "xxx", flavor: "yyy", weight: 1, price: 1, availability: true, image_url: image_url)
  end
  
  test "image url" do
    ok = %w{ apple.gif apple.jpg apple.png APPLE.JPG APPLE.Jpg http://a.b.c/x/y/z/apple.gif }
    bad = %w{ apple.doc apple.gif/more apple.gif.more }

    ok.each do |image_url|
      assert new_product(image_url).valid?,
        "#{image_url} must be valid"
    end

    bad.each do |image_url|
      assert new_product(image_url).invalid?,
        "#{image_url} must be invalid"
    end
  end

  test "fruit is not valid without a unique name" do
    fruit = Fruit.new(name: fruits(:apple).name, color: "xxx", flavor: "yyy", weight: 1, price: 1, availability: true, image_url: "apple.jpg")

    assert fruit.invalid?
    assert_equal ["has already been taken"], fruit.errors[:name]
  end
end
