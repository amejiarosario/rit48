class CourseReviewsController < ApplicationController
  before_filter :login_required

  # GET /course_reviews
  # GET /course_reviews.xml
  def index
    @course_reviews = CourseReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @course_reviews }
    end
  end

  # GET /course_reviews/1
  # GET /course_reviews/1.xml
  def show
    @course_review = CourseReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course_review }
    end
  end

  # GET /course_reviews/new
  # GET /course_reviews/new.xml
  def new
    @course_review = CourseReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course_review }
    end
  end

  # GET /course_reviews/1/edit
  def edit
    @course_review = CourseReview.find(params[:id])
  end

  # POST /course_reviews
  # POST /course_reviews.xml
  def create
    @course_review = CourseReview.new(params[:course_review])

    respond_to do |format|
      if @course_review.save
        format.html { redirect_to(@course_review, :notice => 'Course review was successfully created.') }
        format.xml  { render :xml => @course_review, :status => :created, :location => @course_review }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_reviews/1
  # PUT /course_reviews/1.xml
  def update
    @course_review = CourseReview.find(params[:id])

    respond_to do |format|
      if @course_review.update_attributes(params[:course_review])
        format.html { redirect_to(@course_review, :notice => 'Course review was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_reviews/1
  # DELETE /course_reviews/1.xml
  def destroy
    @course_review = CourseReview.find(params[:id])
    @course_review.destroy

    respond_to do |format|
      format.html { redirect_to(course_reviews_url) }
      format.xml  { head :ok }
    end
  end
end
