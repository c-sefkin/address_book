class Contact
  attr_reader(:first_name, :last_name, :birthday)
  @@all_contact = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @birthday = attributes.fetch(:birthday)
    @id = attributes.fetch(:last_name)
    @full_name = (@first_name).+(" ").+(@last_name)
    @phones =[]
  end

  # define_method(:initialize) do |first_name, last_name, birthday|
  #   @first_name = first_name
  #   @last_name = last-name
  #   @birthday = birthday
  #   @id = @@all_contact
  #   @phones = []

  define_singleton_method(:all) do
    @@all_contact
  end

  define_method(:save) do
    @@all_contact.push(self)
  end

  define_singleton_method(:clear) do
    @@all_contact = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_person = nil
    @@all_contact.each() do |person|
      if person.id().eql?(identification)
        found_person = person
      end
    end
    found_person
  end

  define_method(:phones) do
    @phones
  end

  define_method(:add_phone) do |phone_number|
    @phones.push(phone_number)
  end

  define_method(:full_name) do
    @full_name
  end

end
