$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

unless defined?(YAML)
  require 'yaml'
end

class Signatory
  VERSION = '0.0.1'

  class << self
    def credentials=(creds)
      if !creds.is_a?(Credentials)
        creds = Credentials.load(creds)
      end
      @credentials = creds
    end
    def credentials; @credentials; end
  end
end

require 'signatory/credentials'