class User < ActiveRecord::Base
  has_secure_password
  has_many :posts, foreign_key: :creator_id
  has_many :comments, foreign_key: :author_id

  def self.authenticate(email, password)
    User.find_by(email: email).try(:authenticate, password)
  end
end
