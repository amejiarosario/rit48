class CourseReview < Review
  def overall
    avg = difficulty + usefulness + recommend
    avg += content + time_spent
    avg / 5
  end
end
