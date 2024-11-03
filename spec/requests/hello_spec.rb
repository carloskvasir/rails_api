require 'rails_helper'

RSpec.describe "Hello", type: :request do
  describe "GET /hello" do
    it "returns hello world json" do
      get url_for controller: "hello", action: "index"
        expect(response.content_type).to eq("application/json; charset=utf-8")
    end
  end

  describe "GET /" do
    it "returns hello world json" do
      get "/"
        expect(response.content_type).to eq("application/json; charset=utf-8")
    end
  end
end
