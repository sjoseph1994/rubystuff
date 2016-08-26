require 'spec_helper'

describe "Person class - entry in phonebook" do

  before(:each) do
  	@person = Person.new("joe", "bloggs", "1 Jan 1996")
  	@person2 = Person.new("andy", "nother", "2 Jan 1995")
  	@book = AddressBook.new
  end

  it "should store and return personal information" do
    expect(@person.dob.to_s).to eq "1996-01-01"
    expect(@person.first_name).to eq "Joe"
	expect(@person.surname).to eq "Bloggs"
	expect(@person.fullname).to eq "Joe Bloggs"    	
  end

  it "should add email and phone numbers and also display them" do    
    @person.add_emails "joe@foo.com"
    expect(@person.emails).to eq ["joe@foo.com"]

    @person.add_emails "joe.bloggs@work.com"
    expect(@person.emails).to eq ["joe@foo.com", "joe.bloggs@work.com"]

    @person.emails
    expect(@person.emails).to eq ["joe@foo.com", "joe.bloggs@work.com"]

    @person.add_phone "07712345678"
    expect(@person.phone_numbers).to eq ["07712345678"]

	@person.add_phone "02012345678"
	expect(@person.phone_numbers).to eq ["07712345678", "02012345678"]

	@person.phone_numbers
    expect(@person.phone_numbers).to eq ["07712345678", "02012345678"]
  end

  it "should be able to delete email" do

  	@person.add_emails "joe@foo.com"
    @person.add_emails "joe.bloggs@work.com"


  	@person.remove_emails (1)
    expect(@person.emails).to eq ["joe@foo.com"]
  end

  # it "should be able to print a description of person" do

  # 	@person.add_emails "joe@foo.com"
  #   @person.add_emails "joe.bloggs@work.com"
  #   @person.add_phone "07712345678"
  #   @person.add_phone "02012345678"

  # 	@person.to_s
  #   expect(@person.to_s).to eq "Joe Bloggs, was born on 1996-01-01 
  #   Their email addresses are: joe@foo.com, joe.bloggs@work.com 
  #   Their phone numbers are 07712345678, 02012345678"
  # end

  it "should be able to delete email" do

  	@book.add "person"
    @book.add "person2"
    book.list
    expect(@book.list).to eq "Address Book ------------Entry 1: Joe Bloggs Entry 2: Andy Nother"


  	@person.remove_emails (1)
    expect(@person.emails).to eq ["joe@foo.com"]
  end


end