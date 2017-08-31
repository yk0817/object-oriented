class Gear
  attr_reader :chainring, :cog,:rim,:tire
  def initialize(chainring,cog,rim,tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end
  
  def ratio
    chainring / cog.to_f
  end
  
  def gear_inches
    ratio * (rim + (tire * 2))
  end
end

p Gear.new(52,11,26,1.2).gear_inches
p Gear.new(52,11,20,1).gear_inches
