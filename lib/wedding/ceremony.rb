require 'cgi'

module Wedding
  # The magic happens here
  # Sing, dance, eat and enjpoy
  class Ceremony

    # Time to set the things in the right direction
    # Groom, bride, location, date and event schedule.
    # @param [Hash] config configuration object for the constructor
    def initialize(config)
      @groom = Wedding::Groom.new(config)
      @bride = Wedding::Bride.new(config)
      @location = config[:location]
      @date = (config[:date])
      @event_schedule = config[:event_schedule]
    end

    # We need to access what we have set earlier
    attr_reader :groom, :bride, :location, :event_schedule, :date

    # Where is it taking place?
    def coordinates
      @location
    end

    # Lets have a more readable format of coordinates method
    def location
      "https://maps.google.com/?q=" + CGI.escape(coordinates)
    end

    # Event schedule goes here
    def events
      @event_schedule.join("\n")
    end

    # forms a pretty invitation card for the wedding
    def invitation
      invitation = %Q[
========= Wedding invitation ==========

--------- #{groom.name} with #{bride.name} ---------


Hi #{`whoami`}

We are getting married on #{date}. It will
be a great pleausre for us to have your presence
in the wedding ceremony.

Event schedule:

#{events}
      ]

    rescue StandardError => e

      invitation = %Q[
========= Wedding invitation ==========

Looks like something went wrong here, did you you fake
the invitation?

      ]

    end

    # RSVP for the event
    def rsvp
      invitation = %Q[
You can RSVP for the event by sending an email to
#{groom.name} (#{groom.email}) 
or #{prerita.name} (#{prerita.email})
      ]
    end
  end
end