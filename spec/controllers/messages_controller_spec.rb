require "spec_helper"

describe MessagesController do
  subject(:the_controller) { described_class.new(required_arg: 'foo') }
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index

      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "POST #post_message" do
    xit "responds successfully with an HTTP 302 status code" do
      expect(MessagePoster).to receive(:say).and_return(true)
      post :post_message, message: "this is a test"

      expect(response).to be_redirect
      expect(response.status).to eq(302)
    end

    xit "responds successfully with an HTTP 302 status code" do
      expect(MessagePoster).to receive(:say).and_return(true)

      post :post_message, message: "this is a test"

      expect(response).to be_redirect
      expect(response.status).to eq(302)
    end

    it "responds successfully with an HTTP 302 status code (testing against CampfirePoster)" do
      expect(MessagePoster).to receive(:say).and_return(true)

      post :post_message, message: "this is a test"

      expect(response).to be_redirect
      expect(response.status).to eq(302)
    end
  end
end












#