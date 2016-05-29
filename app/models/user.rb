class User < ActiveRecord::Base
    validates :username, presence: {strict: true}, uniqueness: {case_sensitive: false},
                length: {minimum: 3, maximum: 25}
                
    VALID_EMAIL_REGEX = /\A[a-z+\.]+@[a-z+]+\.[a-z]/i
    
    validates :email, presence:true, length: {maximum: 150},
                uniqueness: {case_sensitive: false}, format: { with: VALID_EMAIL_REGEX }
                
    has_secure_password
    
end
