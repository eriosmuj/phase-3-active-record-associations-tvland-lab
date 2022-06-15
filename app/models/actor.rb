class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters



  def full_name
    # Write a method in the Actor class, #full_name, that returns the first and last name of an actor.
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # Write a method in the Actor class, #list_roles, that lists all of the characters that actor has alongside the show that the character is in.
    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end
end