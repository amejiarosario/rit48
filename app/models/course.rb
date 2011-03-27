class Course < ActiveRecord::Base
  belongs_to :department
  has_many :sections
  has_many :smart_reviews, :through => :sections

  attr_reader :difficulty, :usefulness, :content, :time_spent, :recommend

  # HOW NOT TO DO THINGS.
  # THIS MUST BE FIXED AT ALL COSTS.
  def overall
    avg = @difficulty = @usefulness = 0.0
    @content = @time_spent = @recommend = 0.0

    count = sections.count
    count = 1 if count.zero?
    sections.each do |section|
      avg += section.course_overall

      @difficulty += section.course_difficulty
      @usefulness += section.course_usefulness
      @content += section.course_content
      @time_spent += section.course_time
      @recommend += section.course_recommend
    end

    @difficulty /= count
    @usefulness /= count
    @content /= count
    @time_spent /= count
    @recommend /= count
    avg / count
  end
end
