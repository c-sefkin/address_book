require('rspec')
require('address_book')
require('phone')

describe(Phone) do

  describe('#area_code') do
    it('will allow user to save an area code') do
      test_phone_number = Phone.new({:area_code => "503", :phone_number => "888-8888", :type => "cell"})
      expect(test_phone_number.area_code()).to(eq("503"))
    end
  end

  describe('#phone_number') do
    it('will allow the user to save a phone number') do
      test_phone_number = Phone.new({:area_code => "503", :phone_number => "888-8888", :type => "cell"})
      expect(test_phone_number.phone_number()).to(eq("888-8888"))
    end
  end

  describe('#type') do
    it('will allow the user to enter a phone number type') do
      test_phone_number = Phone.new({:area_code => "503", :phone_number => "888-8888", :type => "cell"})
      expect(test_phone_number.type()).to(eq("cell"))
    end
  end




end
