class SmartReviewsController < ApplicationController
  before_filter :login_required

  # GET /smart_reviews
  # GET /smart_reviews.xml
  def index
    @smart_reviews = SmartReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @smart_reviews }
    end
  end

  # GET /smart_reviews/1
  # GET /smart_reviews/1.xml
  def show
    @smart_review = SmartReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @smart_review }
    end
  end

  # GET /smart_reviews/new
  # GET /smart_reviews/new.xml
  def new
    @smart_review = SmartReview.new
    @smart_review.professor_reviews.build
    @smart_review.course_reviews.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @smart_review }
    end
  end

  # GET /smart_reviews/1/edit
  def edit
    @smart_review = SmartReview.find(params[:id])
  end

  # POST /smart_reviews
  # POST /smart_reviews.xml
  def create
    @smart_review = SmartReview.new(params[:smart_review])
    @smart_review.user = current_user
    @smart_review.section_id = params[:section_id]

    respond_to do |format|
      if @smart_review.save
        format.html { redirect_to(@smart_review.section, :notice => 'Smart review was successfully created.') }
        format.xml  { render :xml => @smart_review, :status => :created, :location => @smart_review }
      else
        format.html { redirect_to(@smart_review.section) }
        format.xml  { render :xml => @smart_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /smart_reviews/1
  # PUT /smart_reviews/1.xml
  def update
    @smart_review = SmartReview.find(params[:id])

    respond_to do |format|
      if @smart_review.update_attributes(params[:smart_review])
        format.html { redirect_to(@smart_review, :notice => 'Smart review was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @smart_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /smart_reviews/1
  # DELETE /smart_reviews/1.xml
  def destroy
    @smart_review = SmartReview.find(params[:id])
    @smart_review.destroy

    respond_to do |format|
      format.html { redirect_to(smart_reviews_url) }
      format.xml  { head :ok }
    end
  end
end
