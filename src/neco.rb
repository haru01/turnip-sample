class Neco
  attr_reader :color, :size

  def initialize(size: size, color: color)
    @color, @size = color, size
  end

end

class Color
  def initialize(r,g,b)
    @r, @g, @b = r, g, b
  end

  @@colors = { "黒い"   => Color.new(0, 0, 0),
               "白い"   => Color.new(255,255,255),
               "茶色い" => Color.new(153, 76, 0), }
  def self.create(color)
    @@colors[color]
  end

  def self.keys
    @@colors.keys
  end

end

class Size
  def initialize(size)
    @size = size
  end

  @@sizes = { "大きな"   => Size.new("Large"),
              "小さな"   => Size.new("Small"), }
  def self.create(size)
    @@sizes[size]
  end

  def self.keys
    @@sizes.keys
  end

end
