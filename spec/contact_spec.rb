require ('rspec')
require ('contact')

describe(Contact) do

  before() do
    Contact.clear()
  end

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

  describe('#save') do
    it('will allow the user to store contact information') do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      test_name.save()
      expect(Contact.all()).to(eq([test_name]))
    end
  end

  describe('.clear') do
    it('will allow for clearing of all values') do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      test_name.save()
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe("#id") do
    it("return the information of contact by first name") do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      test_name.save()
      expect(test_name.id()).to(eq("Sefkin"))
    end
  end

  describe('.find') do
    it('will find contact information from last name') do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      test_name.save()
      test_name2 = Contact.new({:first_name => "Ian", :last_name => "Bevel", :birthday => "06/15/84"})
      test_name2.save()
      expect(Contact.find(test_name.id())).to(eq(test_name))
    end
  end

  describe('#phones') do
    it('initially returns an empty array of phone numbers for contact') do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      expect(test_name.phones()).to(eq([]))
    end
  end

  describe('#add_phone')  do
    it('will allow user to add an additional phone number to a contact') do
      test_name = Contact.new({:first_name => "Chris", :last_name => "Sefkin", :birthday => "08/08/83"})
      test_phone_number = Phone.new({:area_code => "503", :phone_number => "888-1111", :type => "cell"})
      test_name.add_phone(test_phone_number)
      expect(test_name.phones()).to(eq([test_phone_number]))
    end
  end

 end
