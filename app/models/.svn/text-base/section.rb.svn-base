class Section < ActiveRecord::Base
  belongs_to :course
  belongs_to :professor
  has_many :smart_reviews, :dependent => :destroy
  has_many :professor_reviews, :through => :smart_reviews
  has_many :course_reviews, :through => :smart_reviews

  # Attributes used for the professor
  attr_reader :professor_difficulty, :professor_teaching, :professor_mood
  attr_reader :professor_exam, :professor_helpfulness
  # Attributes used for the course
  attr_reader :course_difficulty, :course_usefulness, :course_content
  attr_reader :course_time, :course_recommend

  # HOW NOT TO DO THINGS.
  # THIS MUST BE FIXED AT ALL COSTS.
  def professor_overall
    avg = @professor_difficulty = @professor_teaching = 0.0
    @professor_mood = @professor_exam = @professor_helpfulness = 0.0

    count = professor_reviews.count
    count = 1 if count.zero?
    professor_reviews.each do |review|
      avg += review.overall
      @professor_difficulty += review.difficulty
      @professor_teaching += review.teaching_skill
      @professor_mood += review.mood
      @professor_exam += review.exams_difficulty
      @professor_helpfulness += review.helpfulness
    end

    @professor_difficulty /= count
    @professor_teaching /= count
    @professor_mood /= count
    @professor_exam /= count
    @professor_helpfulness /= count
    avg / count
  end

  def course_overall
    avg = @course_difficulty = @course_usefulness = 0.0
    @course_content = @course_time = @course_recommend = 0.0

    count = course_reviews.count
    count = 1 if count.zero?
    course_reviews.each do |review|
      avg += review.overall

      @course_difficulty = review.difficulty
      @course_usefulness = review.usefulness
      @course_content = review.content
      @course_time = review.time_spent
      @course_recommend = review.recommend
    end

    @course_difficulty /= count
    @course_usefulness /= count
    @course_content /= count
    @course_time /= count
    @course_recommend /= count
    avg / count
  end
end
