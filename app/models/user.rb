class User < ApplicationRecord
    has_many :gadgets 
    has_many :journals
end
