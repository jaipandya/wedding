module Wedding
  class Groom
    def initialize(config)
      self.name = config[:groom_name]
      self.about = config[:groom_about]
      self.occupation = config[:groom_occupation]
      self.email = config[:groom_email]
    end
    attr_accessor :name, :about, :occupation, :email
  end
end