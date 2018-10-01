require "mac_logger/version"
require "mac_logger/logger"

module MacLogger
  # Your code goes here...
  def self.logger
    @logger ||= Logger.new
  end
end
