require_relative 'field.rb'

class Farm

  def self.main_menu
    while true # repeat indefinitely
       print_main_menu
       user_selected = gets.to_i
       call_option(user_selected)
     end
  end

  def self.print_main_menu
     puts '[1] Field'
     puts '[2] Harvest'
     puts '[3] Status'
     puts '[4] Relax'
     puts '[5] Exit'
     puts 'Enter a number: '
  end

  def self.call_option(user_selected)
    case user_selected
    when 1 then field
    when 2 then harvest
    when 3 then status
    when 4 then relax
    when 5 then exit
    end
  end

  def self.field
    print 'What kind of field is it? corn or wheat?'
    field_type = gets.chomp

    print 'How large is the field in Hectares?'
    field_size = gets.chomp.to_i

    if field_type == 'corn'
    Corn.create('corn', field_size)
    elsif field_type == 'wheat'
    Wheat.create('wheat', field_size)
    else
        print 'Invalid entry'
        main_menu
    end
  end

  def self.harvest
    Field.harvest
  end

  def self.status
    Field.status
  end

  def self.relax
    Field.relax
  end

end
