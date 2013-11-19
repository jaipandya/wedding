module Wedding
  class Groom
    def initialize(config)
      self.name = config[:groom_name]
      self.about = config[:groom_about]
      self.occupation = config[:groom_occupation]
      self.email = config[:groom_email]
    end
    def to_s
      groom_gungaan = %Q[
========= Groom ==========

The groom's name is #{self.name}
He is a #{self.about}
He works as a #{self.occupation}
If you want to contact him, his email ID
is #{self.email}

      ]
    end
    attr_accessor :name, :about, :occupation, :email
  end
end