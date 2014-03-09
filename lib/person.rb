
class Person
  attr_accessor :name, :address

  def lives_at?(street_name)
    address.include?(street_name)
  end

  def royalty?
    name == "Elizabeth Windsor" && lives_at?("Buckingham Palace")
  end
end