# coding: utf-8
step ':necoが:num匹いる' do |neco, num|
  @neco_tachi ||= []
  num.times { @neco_tachi << neco }
end

step ':size猫が合計:num匹いること' do |size, num|
  @neco_tachi.select { |neco|
    neco.size == size
  }.size.should == num
end

step ':color猫が合計:num匹いること' do |color, num|
  @neco_tachi.select { |neco|
    neco.color == color
  }.size.should == num
end

size_exp  = '(大きな|小さな)'
color_exp = '(白い|茶色い|黒い)'

placeholder :neco do
  match /#{size_exp}#{color_exp}猫/ do |size, color|
    Neco.new(
      size:  Size.create(size),
      color: Color.create(color)
    )
  end
end

placeholder :color do
  match /#{color_exp}/ do |color|
    Color.create(color)
  end
end

placeholder :size do
  match /#{size_exp}/ do |size|
    Size.create(size)
  end
end

placeholder :num do
  match /\d+/ do |num|
    num.to_i
  end
end
