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


end
