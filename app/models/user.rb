class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  # has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: /@/
  before_save :downcase_email
  #before_create :generate_confirmation_instructions
  
  devise :database_authenticatable,
         :registerable,

         :trackable,
         :jwt_authenticatable, 
         jwt_revocation_strategy: JWTBlacklist

  
  def downcase_email
    self.email = self.email.delete(' ').downcase
  end

  # def generate_confirmation_instructions
  #   self.confirmation_token = SecureRandom.hex(10)
  #   self.confirmation_sent_at = Time.now.utc
  # end

end
