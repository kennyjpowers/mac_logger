require "mac_logger/version"
require "mac_logger/logger"

module MacLogger
  # Your code goes here...
  def self.logger(options = {})
    @logger ||= Logger.new(options)
  end
end
