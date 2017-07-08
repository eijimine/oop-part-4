require 'pry'

class Field

attr_accessor :type, :size, :yield

  @@fields = []
  @@total_yield = 0

    CORN = 20
    WHEAT = 30

  def initialize(field_type, field_size)
      @type = field_type
      @size = field_size

  end

  def self.relax
    sum_corn = 0
    sum_wheat = 0
    @@fields.each do |field|
      if field.type == 'corn'
      sum_corn += field.size
    elsif field.type == 'wheat'
      sum_wheat += field.size
      end
    end

      puts "#{sum_corn} hectares of tall green stalks rustling in the breeze fill your horizon.
          The sun hangs low, casting an orange glow on a sea of #{sum_wheat} hectares of wheat."
  end

  def self.status
    @@fields.each do |field|
      puts "#{field.type} is #{field.size} hectare."
      end
      puts "The farm has #{@@total_yield} harvested food so far."
  end

  def self.all
    @@fields
  end

  def self.harvest
    sum = 0
    @@fields.each do |field|
    puts "Harvesting #{field.yield} food from #{field.size} hectare #{field.type} field."
    sum += field.yield
    end
    @@total_yield += sum
    puts "The farm has #{sum} harvested food so far."

  end
end

class Corn < Field

    def initialize(field_type, field_size)
      super(field_type, field_size)
      @yield = field_size * CORN

    end

    def self.create(field_type, field_size)
      corn = Corn.new(field_type, field_size)
      @@fields << corn
    end

end

class Wheat < Field

      def initialize(field_type, field_size)
        super(field_type, field_size)
        @yield = field_size * WHEAT

      end

    def self.create(field_type, field_size)
      wheat = Wheat.new(field_type, field_size)
      @@fields << wheat
    end

end
