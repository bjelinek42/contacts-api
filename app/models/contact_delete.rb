class Contact
  attr_accessor :first_name, :last_name, :email, :phone_number
  
  def initialize(options)
    @first_name = options[:first_name]
    @last_name = options[:last_name]
    @email = options[:email]
    @phone_number = options[:phone_number]
  end

end