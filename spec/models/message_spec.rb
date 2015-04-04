require "rails_helper"

describe Message do
  it "sends an sms message to a user" do
    message = Message.new(body: "Hello, World!", to: ENV['TO_PHONE_NUMBER'], from: ENV['FROM_PHONE_NUMBER'])
    # binding.pry
    status = message.send_sms
    parsed_status = JSON.parse(status)
    expect(parsed_status['status']).to eq("queued")
  end
end
