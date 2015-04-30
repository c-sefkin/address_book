class Contact
  attr_reader(:first_name, :last_name, :birthday)
  @@all_contact = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @birthday = attributes.fetch(:birthday)
  end

  define_singleton_method(:all) do
    @@all_contact
  end

  define_method(:save) do
    @@all_contact.push(self)
  end

  define_singleton_method(:clear) do
    @@all_contact = []
  end

end
