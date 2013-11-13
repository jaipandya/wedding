module Wedding
  class Bride
    def initialize(config)
      self.name = config[:bride_name]
      self.about = config[:bride_about]
      self.occupation = config[:bride_occupation]
      self.email = config[:bride_email]
    end
    attr_accessor :name, :about, :occupation, :email
  end
end