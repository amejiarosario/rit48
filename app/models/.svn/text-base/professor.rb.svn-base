class Professor < ActiveRecord::Base
  has_many :sections
  has_many :smart_reviews, :through => :sections

  attr_reader :difficulty, :mood, :teaching_skills, :exams_difficulty, :helpfulness

  # HOW NOT TO DO THINGS.
  # THIS MUST BE FIXED AT ALL COSTS.
  def overall
    avg = @difficulty = @mood = @teaching_skills = 0.0
    @exams_difficulty = @helpfulness = 0.0
    count = 0 + sections.count
    count = 1 if count.zero?
    sections.each do |section|
      avg += section.professor_overall
      @difficulty += section.professor_difficulty
      @teaching_skills += section.professor_teaching
      @mood += section.professor_mood
      @exams_difficulty += section.professor_exam
      @helpfulness += section.professor_helpfulness
    end

    @difficulty /= count
    @teaching_skills /= count
    @mood /= count
    @exams_difficulty /= count
    @helpfulness /= count
    avg / count
  end
end
