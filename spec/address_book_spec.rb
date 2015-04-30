require ('rspec')
require ('address_book')

describe(Contact) do

  # before() do
  #   Contact.clear()
  # end

  describe('#first_name') do
    it('will allow for entry of contact first name') do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      expect(test_name.first_name()).to(eq("Chris"))
    end
  end

  describe('#last_name') do
    it('will allow for entry of contact last name') do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      expect(test_name.last_name()).to(eq("Sefkin"))
    end
  end

  describe('#birthday') do
    it('will allow for the entry of a birthday') do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      expect(test_name.birthday()).to(eq("08/08/83"))
    end
  end

  describe('.all') do
    it('will allow to start with an empty array') do
      expect(Contact.all()).to(eq([]))
    end
  end


#   describe('#save') do
#     it('will allow the user to store contact information') do
#       test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
#       test_name.save()
#       expect(
#
#
#
 end
