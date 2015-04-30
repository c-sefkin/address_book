require('rspec')
require('address_book')
require('phone')

describe(Phone) do

  before() do
    Phone.clear()
  end

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

  describe('.all') do
    it('will create method do look at all phone numbers') do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will allow user to save phone numbers') do
      test_phone_number = Phone.new({:area_code => "503", :phone_number => "888-8888", :type => "cell"})
      test_phone_number.save()
      expect(Phone.all()).to(eq([test_phone_number]))
    end
  end

  describe('.clear') do
    it('clear all values from the phone list') do
      test_phone_number = Phone.new({:area_code => "503", :phone_number => "888-8888", :type => "cell"})
      test_phone_number.save()
      expect(Phone.clear()).to(eq([]))
    end
  end












  # describe('.find') do
  #   it('finds a contact based on phone number') do
  #     test_phone_number = Phone.new({:area_code => "503", :phone_number => "888-8888", :type => "cell"})
  #     test_phone_number.save()
  #     test_phone_number_2 = Phone.new({:area_code => "503", :phone_number => "888-1234", :type => "home"})
  #     test_phone_number_2.save()
  #     expect(Phone.find())


end
