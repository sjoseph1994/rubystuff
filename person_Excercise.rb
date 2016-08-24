class Person

  #attr_accessor :emails, :phone_numbers

    def initialize (first_name, surname, dob)
      @first_name = first_name
      @surname = surname
      @fullname = first_name + surname
      @dob = dob

    @emails, @phone_numbers = [], []
    end

    def add_email (your_email)
      @emails.push(your_email)
    end

    def add_phone (your_phone)
      @phone_numbers.push (your_phone)
    end

    def remove_email
      @emails.pop
    end

    def to_s
      puts "#{@fullname}, was born on #{@dob}, Their email addresses are: #{@emails}"
      puts "Their email addresses are: #{@emails}, Their phone numbers are #{@phone_numbers}" 
    end

    end



end