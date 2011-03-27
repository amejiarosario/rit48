class SmartReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :section
  has_many :professor_reviews, :dependent => :destroy
  has_many :course_reviews, :dependent => :destroy

  accepts_nested_attributes_for :professor_reviews
  accepts_nested_attributes_for :course_reviews
end
