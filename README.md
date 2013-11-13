# Wedding

What could a ruby gem be better suited for?

## Installation

Add this line to your application's Gemfile:

    gem 'wedding'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wedding

## Usage

Create a new wedding

  # By default it would take config options from
  # lib/wedding/default_config.rb, which can be overrridden
  # by passing yoru own hash
  wedding = Wedding.new

  # Print the invitation card
  wedding.invitation

  # Open google maps location in the browser
  # This requires you to be working on a graphical system
  # with a presence of a web browser
  wedding.map_location

  # Access the groom 'object'
  wedding.groom

  # Access the bride 'object'
  wedding.bride

  # RSVP for the event
  wedding.rsvp
