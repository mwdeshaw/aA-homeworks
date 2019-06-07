# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  users           :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    after_initialize :ensure_session_token

    validates :email, presence: true, uniqueness: true
    validates :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }

    attr_reader :password

    def self.find_by_credentials(email, pw)
        user = User.find_by(email: email)
        return nil if user.nil?
        
        user.is_password?(pw) ? user : nil
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = generate_unique_session_token
        self.save!
        self.session_token
    end

  def generate_unique_session_token
    token = SecureRandom.urlsafe_base64(16)

    while self.class.exists?(session_token: token)
      token = SecureRandom.urlsafe_base64(16)
    end

    token
  end

    private
    def ensure_session_token
        self.session_token ||= generate_unique_session_token
    end
end
