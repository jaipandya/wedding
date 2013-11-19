require 'launchy'
require 'thor'
require 'wedding/default_config'

# Lets bring the bride, groom here and
# ring the bells to start the ceremony
require 'wedding/bride'
require 'wedding/groom'
require 'wedding/ceremony'

module Wedding

  class << self

    # Sets the default options used when calling Wedding#new.
    attr_writer :default_config

    # There is a weddig, there is a ceremony. Time for celebrations.
    attr_accessor :ceremony


    # Returns new Ceremony object that can be used to query details
    #   about the wedding
    # @param [Hash] config A hash of config values for wedding. Check
    #   default_config.rb
    def new(config = nil)
      config = config ? default_config.merge(config) : default_config.dup
      Ceremony.new(config)
    end
  
    # Getter method for default_config for the wedding.
    def default_config
      DefaultConfig.options
    end


  end

end
