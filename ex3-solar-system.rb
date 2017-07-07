class System

@@bodies = []

  def add
    @@bodies << self
  end

  def total_mass
    sum = 0
      @@bodies.each do |body|
        sum = sum + body.mass
      end
    return sum
  end

  def self.all
    @@bodies
  end

end


class Body < System

attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
    return
  end
end

class Planets < Body

attr_accessor :day, :year

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end
end


class Stars < Body

  attr_accessor :type

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
end


class Moons < Body

  attr_accessor :month, :planet

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end
