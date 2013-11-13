module Wedding 
  class Ceremony

    def initialize(config)
      @groom = Wedding::Groom.new(config)
      @bride = Wedding::Bride.new(config)
      @location = config[:location]
      @date = (config[:date])
      @event_schedule = config[:event_schedule]
    end

    attr_reader :groom, :bride, :location, :event_schedule, :date

    def map_location
      Launchy.open("http://maps.google.com")
    end

    def events
      #Pretty Print event schedule
    end

    # forms a pretty invitation card for the wedding
    def invitation
      %Q[
        ========= Wedding invitation ==========
        
        --------- #{groom.name} with #{bride.name} ---------

        We are getting married on 29th November 2013. It would
        be our pleausre have your presence in the wedding ceremony.

        Event schedule:

        #{events}
      ]
    end

    # not implemented
    def rsvp

    end
  end
end