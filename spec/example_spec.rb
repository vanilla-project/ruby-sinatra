require "example"

RSpec.describe Example do
  let(:example) {described_class.new}

  it "provides a message" do
    expect(example.message).to eq("Hello Sinatra")
  end
end
