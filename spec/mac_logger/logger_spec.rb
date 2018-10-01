require 'terminal-notifier'
RSpec.describe MacLogger::Logger do

  subject { MacLogger::Logger.new(title: "Test",
                                  subtitle: "FTW")
  }

  it "should log the message passed into debug" do
    expect(TerminalNotifier).to receive(:notify).with(/message/, anything)
    subject.debug("message")
  end

  it "should use the title option for notifications" do
    expect(TerminalNotifier).to receive(:notify).with(anything, :title => "Test", :subtitle => anything)
    subject.debug("message")
  end

  it "should use the subtitle option for notifications" do
    expect(TerminalNotifier).to receive(:notify).with(anything, :title => anything, :subtitle => "FTW")
    subject.debug("message")
  end
end
