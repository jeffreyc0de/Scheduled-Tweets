# email:string
# password_digest:string
#
# password:string virtual attribute
# password_conformation:string virtual attribute

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'invalid email address provided' }
end
