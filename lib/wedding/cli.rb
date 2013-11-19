require 'wedding'
require 'launchy'
module Wedding
  
  # We have a new wedding taking place here
  self.ceremony = self.ceremony || self.new

  # Command line interface for the wedding
  class CLI < Thor
    desc 'invitation', 'Your invitation card is inside this envelope'
    def invitation
      puts Wedding.ceremony.invitation
    end

    desc 'location', 'Google maps link to the wedding venue'
    def location
      puts map_location = Wedding.ceremony.location
      answer = yes?('Do you want to open this link in browser? (yes/no)')
      if (answer)
        begin
          Launchy.open(map_location)
        rescue StandardError => e
          puts "Sorry, you are probably not using a graphical terminal"
        end
      end
    end

    desc 'rsvp', 'RSVP for the event'
    def rsvp
      puts Wedding.ceremony.rsvp
    end

    desc 'groom', 'Glory words about the groom'
    def groom
      puts Wedding.ceremony.groom
    end

    desc 'bride', 'Glory words about the bride'
    def bride
      puts Wedding.ceremony.bride
    end

  end
end