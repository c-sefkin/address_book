class Phone
  attr_reader(:area_code, :phone_number, :type)

  @@all_phone = []


  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @phone_number = attributes.fetch(:phone_number)
    @type = attributes.fetch(:type)
  end

  define_singleton_method(:all) do
    @@all_phone
  end

  define_method(:save) do
    @@all_phone.push(self)
  end

  define_singleton_method(:clear) do
    @@all_phone = []
  end


end
