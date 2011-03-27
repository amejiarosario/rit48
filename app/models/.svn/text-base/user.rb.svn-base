class User < ActiveRecord::Base
  acts_as_authentic
  has_many :smart_reviews, :dependent => :destroy
end
