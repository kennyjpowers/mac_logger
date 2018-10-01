require 'date'

module MacLogger
  class Logger
    def initialize(options = {})
      opts = options.dup
      @options = {:title => "Ruby",
                  :subtitle => "Program"}.merge(opts)
      @title = @options[:title]
      @subtitle = @options[:subtitle]
    end

    def debug(message)
      log("#{DateTime.now}|DEBUG|#{message}")
    end

    private

    def log(message)
      TerminalNotifier.notify(message, :title => @title, :subtitle => @subtitle)
    end
    
  end
end
