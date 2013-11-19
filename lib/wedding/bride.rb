module Wedding
  # No wedding without a bride
  class Bride
    # Get her ready for all the jazz and buzz
    def initialize(config)
      self.name = config[:bride_name]
      self.about = config[:bride_about]
      self.occupation = config[:bride_occupation]
      self.email = config[:bride_email]
    end

    # Overriding for pretty printing
    def to_s
      bride_gungaan = %Q[
========= Bride ==========

The bride's name is #{self.name}
She is a #{self.about}
She works as #{self.occupation}
If you want to contact her, her email ID
is #{self.email}

      ]
    end
    attr_accessor :name, :about, :occupation, :email
  end
end