require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    FactoryBot.build(:user,
      email: "jondoe@fakesite.com",
      password: "password_123")
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe "#reset_session_token!" do
    it "sets a new session token on the user" do
      user.valid?
      old_session_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(old_session_token)
    end

    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "#is_password?" do
    it "verifies correct password" do
      expect(user.is_password?("password_123")).to be true
    end

    it "verifies incorrect password " do
      expect(user.is_password?("bad_password")).to be false
    end
  end

  describe ".find_by_credentials" do
    before { user.save! }

    it "returns user given valid credentials" do
      expect(User.find_by_credentials("jondoe@fakesite.com", "password_123")).to eq(user)
    end

    it "returns nil given bad credentials" do
      expect(User.find_by_credentials("jondoe@fakesite.com", "bad_password")).to eq(nil)
    end
  end
end
