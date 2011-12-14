require 'cora'
require 'siri_objects'

#######
# Remember to add other plugins to the "config.yml" file if you create them!
######

class SiriProxy::Plugin::Fat < SiriProxy::Plugin
  attr_accessor :phrase_file
  
  def initialize(config = {})

    if config["phrase_file"].nil?
      x = ""
    else
      x = config["phrase_file"]
    end
    
    if File.exist? x
      self.phrase_file = x
    else
      self.phrase_file = File.dirname(File.dirname(__FILE__))+"/fat.txt"
    end
    
  end

  listen_for /how (big|large|fat|huge) is (.*) mom/i do [name]
    lines = IO.readlines(self.phrase_file)
    rl = rand(lines.count-1)
    say "" + name + lines[rl]
    request_completed
  end

end