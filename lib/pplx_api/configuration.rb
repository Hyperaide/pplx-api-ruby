class Configuration
  attr_accessor :api_key
end

@config = Configuration.new

def self.config
  @config
end

def self.configure
  yield(@config)
end