require 'launchy'
require 'require_all'
require_rel 'wedding'

module Wedding

  class << self

    # Public: Sets the default options used when calling Wedding#new.
    attr_writer :default_config
    
    # Returns new Ceremony object that can be used to query details
    #   about the wedding
    # @param [Hash] config A hash of config values for wedding. Check
    #   default_config.rb
    def new(config = nil)
      config = config ? default_config.merge(config) : default_config.dup
      Ceremony.new(config)
    end
  
    def default_config
      DefaultConfig.options
    end

  end

end
