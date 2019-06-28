class User < ApplicationRecord
    validates :email, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }

    after_initialization :ensure_session_token!
    attr_reader :password

    def ensure_session_token!
        self.session_token ||= SecureRandom.urlsafe_base_64
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base_64
        self.save
        self.session_token
    end

    def self.find_by_credentials(email, password) {
        user = User.find_by(email: email)
        return nil unless user
        is_pw?(password) ? user : nil
    }

    def is_pw?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

end
