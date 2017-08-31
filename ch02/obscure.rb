class ObscuringReferences
  attr_reader :data
  def initialize(data)
    @data = data
  end
  def diameter
    data.map{|cell| cell[0] + (cell[1] * 2)}
  end
end

p ObscuringReferences.new([[11,32],[22,33],[1,2]]).diameter

# ↑はダメ diameterは配列の構造に依存している。
# 例えば順序が間違えて逆なら意図した結果にならない。