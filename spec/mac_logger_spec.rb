RSpec.describe MacLogger do
  it "has a version number" do
    expect(MacLogger::VERSION).not_to be nil
  end

  subject { MacLogger }

  it "has logger" do
    expect(subject.logger).to_not be nil
  end
end
