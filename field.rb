require 'pry'

class Field

attr_accessor :type, :size

  @@farm = []

    CORN = 20
    WHEAT = 30

  def initialize(field_type, field_size)
      @type = field_type
      @size = field_size

  end

    def self.create(field_type, field_size)
      field = Field.new(field_type, field_size)
      @@farm << field
    end

    def self.harvest
      num1 = 0
      num2 = 0
      @@farm.each do |arg|
        if arg.type == 'corn'
          num1 += arg.size * CORN
      elsif arg.type == 'wheat'
          num2 += arg.size * WHEAT
       end
       puts num1
       puts num2
       total = num1 + num2
       puts total
      end
    end


end
