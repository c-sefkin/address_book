class Contact
  attr_reader(:first_name, :last_name, :birthday)
  @@all_contact = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @birthday = attributes.fetch(:birthday)
    @id = attributes.fetch(:last_name)
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

end
