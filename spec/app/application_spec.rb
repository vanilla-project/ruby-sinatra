require "spec_helper"
require "example"

RSpec.describe Application do
  context "index" do
    it "renders the page" do
      get "/"

      expect(last_response).to be_ok
    end

    it "contains the page title" do
      get "/"

      expect(last_response.body).to include("Vanilla Ruby Sinatra Application")
    end

    it "contains the example message" do
      example = Example.new

      get "/"

      expect(last_response.body).to include(example.message)
    end
  end
end

