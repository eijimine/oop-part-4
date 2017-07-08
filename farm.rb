require_relative 'field.rb'

class Farm

  CORN = 20
  WHEAT = 30

  def initialize

  end

  def main_menu
    while true # repeat indefinitely
       print_main_menu
       user_selected = gets.to_i
       call_option(user_selected)
     end
  end

  def print_main_menu
     puts '[1] Field'
     puts '[2] Harvest'
     puts '[3] Status'
     puts '[4] Relax'
     puts '[5] Exit'
     puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
    when 1 then field
    when 2 then harvest
    when 3 then status
    when 4 then relax
    when 5 then exit
    end
  end

  def field
    print 'What kind of field is it? corn or wheat?'
    field_type = gets.chomp

    print 'How large is the field in Hectares?'
    field_size = gets.chomp.to_i

    Field.new(field_type, field_size)

      else
        print 'Invalid entry'
        main_menu
    end
  end


  end

  def modify_existing_contact

    print "Who's contact would you like to modify?"
    print "Please enter their first name: "
    name = gets.chomp


    print "Which attribute would you like to change?"
    attribute = gets.chomp

    print "What would you like to change it to?"
    value = gets.chomp

    contacts = Contact.find_by('first_name', name)
    new_contact = contacts[0]
    if new_contact == nil
      puts "Invalid entry, please start again."
      main_menu
    else
    new_contact.update(attribute, value)
  end
  end

  def delete_contact
    print "Please enter the name of contact you would like to delete: "
    name = gets.chomp


    contacts = Contact.find_by('first_name', name)
    new_contact = contacts[0]
    if new_contact == nil
      puts "Invalid entry, please start again."
      main_menu
    else
    new_contact.delete
  end
  end

  def display_all_contacts
    display = Contact.all.inspect
    puts display
  end

  def search_by_attribute
    print "Please enter the attribute then the value to search by: "
    attribute = gets.chomp
    value = gets.chomp

    contacts = Contact.find_by(attribute, value)
    contacts.each do |contact|
      puts "Contact info: #{contact.inspect}."
    end
  end


end
