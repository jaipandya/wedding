require 'cgi'
require 'artii'
require 'date'
require 'rainbow'

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
      @date = Date.parse(config[:date])
      @event_schedule = config[:event_schedule]

      @artii = Artii::Base.new :font => 'slant'
    end

    # We need to access what we have set earlier
    attr_reader :groom, :bride, :location, :event_schedule, :date

    # Venue coordinates
    def coordinates
      @location
    end

    # Lets have a more readable format of coordinates method
    # with a URL to google maps
    def location
      "https://maps.google.com/?q=" + CGI.escape(coordinates)
    end

    # Number of days left
    def days_left
      (date - Date.today)
    end

    # Event schedule
    def events
      @event_schedule.join("\n")
    end

    # Forms a pretty invitation card for the wedding
    def invitation
      invitation = %Q[
#{print_ganesha.color(:green)}
========= Wedding invitation ==========

#{@artii.asciify(groom.name).color(:blue)}  
    with
#{@artii.asciify(bride.name).color(:blue)}


Hi #{`whoami`.strip.capitalize}

We are getting married on #{date.strftime("%d %B %y")}. It will
be a great pleasure for us to have your presence
in the wedding ceremony.

Event schedule:

#{events}

Pack your bags! Only #{days_left.to_s.color(:red)} days left.
      ]

    rescue StandardError => e

      invitation = %Q[
========= Wedding invitation ==========

Looks like something went wrong here, did you you fake
the invitation?

      ]

    end

    # In Hindu mythology it is a custom to start 
    # anything new worshipping lord Ganesha
    # http://en.wikipedia.org/wiki/Ganesha
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
You can RSVP to the event by sending an email to
#{groom.name.color(:blue)} (#{groom.email.color(:green)}) 
or #{bride.name.color(:blue)} (#{bride.email.color(:green)})
      ]
    end
  end
end