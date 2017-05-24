class Contact
  attr_accessor :first_name, :last_name, :email
  attr_reader :id

  @@contacts = []
  #wanting to look at all instances of contacts.
  @@next_id = 1000

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @id = @@next_id

    @@next_id += 1
  end

  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email)
    new_contact = Contact.new(first_name, last_name, email)
    @@contacts << new_contact
    new_contact
  end

  def self.find(id)
    # exercise for the reader
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
