require 'cgi'
require 'artii'

module Wedding
  # The magic happens here
  # Sing, dance, eat and enjoy
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

      @artii = Artii::Base.new :font => 'slant'
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
#{print_ganesha}
========= Wedding invitation ==========

#{@artii.asciify(groom.name)}  
    with
#{@artii.asciify(bride.name)}


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

    # http://en.wikipedia.org/wiki/Ganesha
    # In Hindu mythology it is a custom to start 
    # anything new worshipping lord Ganesha
    def print_ganesha
      ganesh = %Q[
                 _.!._           
                /O*@*O\\          
              <\\@(_)@/>          
      ,;,   .--;`     `;--.   ,  
      O@O_ /   |d     b|   \\ _hnn
      | `/ \\   |       |   / \\` |
      &&&&  :##;\\     /;##;  &&&&
      |  \\ / `##/|   |##'  \\ /  |
      \\   %%%%`</|   |#'`%%%%   /
       '._|_ \\   |   |'  / _|_.' 
         _/  /   \\   \\   \\  \\    
        / (\\(     '.  '-._&&&&   
       (  ()##,    o'--.._`\\-)   
        '-():`##########'()()()  
         /:::::/()`Y`()\\:::::\\   
         \\::::( () | () )::::/   
          `"""`\\().'.()/'"""`    
          ]
    end

    # RSVP for the event
    def rsvp
      invitation = %Q[
You can RSVP for the event by sending an email to
#{groom.name} (#{groom.email}) 
or #{bride.name} (#{bride.email})
      ]
    end
  end
end