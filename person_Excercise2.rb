require 'date'

#-------------------------------------------------------------#

class Person

  #attr_accessor
  attr_accessor :first_name, :surname, :fullname, :dob, :emails, :phone_numbers

   def initialize (first_name, surname, dob = nil)
    @first_name = first_name
    @surname = surname
    @fullname = first_name +" "+ surname
    @dob = dob

    @emails, @phone_numbers = [], []
  end

  # def get_full_name 
  #   return @fullname
  # end

  #Setters
  def add_email(your_email)
    @emails.push(your_email)
  end

  def add_phone (your_phone)
    @phone_numbers.push (your_phone)
  end

  def remove_email(email)
    @emails.delete(email)
  end

  def to_s
    puts "#{@fullname}, was born on #{@dob}"
    puts "Their email addresses are: #{@emails}"
    puts "Their phone numbers are #{@phone_numbers}"	
  end

  def print_details
    puts "#{@fullname}"
    puts "-" * @fullname.length
    puts "Date of Birth: #{@dob}"
    puts ""
    puts "Email Addresses:"
    @emails.each do |item|
      puts "- #{item}"
    end
    puts ""
    puts "Phone Numbers:"
    @phone_numbers.each do |item|
      puts "- #{item}"
    end
  end
end

def create_users 
  @scott = Person.new "Scott","Joseph","21st March 1994"
  @scott.add_phone("07543421345")
  @scott.add_phone("07543422115")
  @scott.add_email("scott@bnjhgfgfh.com")
  @scott.add_email("rfdfgutvh@uytcgcfhvjb.com")

  @abdi = Person.new "Abdi","TheKid","31st October 1994"
  @abdi.add_phone("07454261523")
  @abdi.add_phone("07643221123")
  @abdi.add_email("abdi@bnjhgfgfh.com")
  @abdi.add_email("rcvjkervkercere.com")

  @Obama = FamilyMember.new "Barack","Obama","4th August 1994"
  @Obama.add_phone("07853213454")
  @Obama.add_phone("07657743213")
  @Obama.add_email("BarackObama@Whitehouse.com")
  @Obama.add_email("BarackSpare@Whitehouse.com")
end

#-------------------------------------------------------------#

class FamilyMember < Person

  def initialize (first_name, surname, dob)
    @relationship = true
    super
  end

end

#-------------------------------------------------------------#

class AddressBook

  def initialize
    @list = []
  end

  def add(person)
    person.is_a?(Person) || person.is_a?(FamilyMember) ? @list << person.fullname : "Make sure it's a person or family Family Member"
      
  end

  def list
    puts "Address Book"
    puts "------------"
    @list.each_with_index do |item, index|
      print "Entry #{index + 1}: "
      puts item
    end
  end
end

#-------------------------------------------------------------#

#main
# create_users
# @book = AddressBook.new
# @book.add(@abdi)
# @book.add(@scott)
# @book.add(@Obama)

