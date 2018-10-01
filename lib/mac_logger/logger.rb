module MacLogger
  class Logger
    def initialize(options = {})      
    end

    def debug(message)
      log(DateTime.now + "|" + "DEBUG" + "|" + messasge)
    end

    private

    def log(message)
      TerminalNotifier.notify(message, :title => 'Ruby', :subtitle => 'Programming Language')
    end
    
  end
end
