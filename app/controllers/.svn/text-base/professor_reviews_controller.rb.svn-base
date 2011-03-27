class ProfessorReviewsController < ApplicationController
  before_filter :login_required

  # GET /professor_reviews
  # GET /professor_reviews.xml
  def index
    @professor_reviews = ProfessorReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @professor_reviews }
    end
  end

  # GET /professor_reviews/1
  # GET /professor_reviews/1.xml
  def show
    @professor_review = ProfessorReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @professor_review }
    end
  end

  # GET /professor_reviews/new
  # GET /professor_reviews/new.xml
  def new
    @professor_review = ProfessorReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @professor_review }
    end
  end

  # GET /professor_reviews/1/edit
  def edit
    @professor_review = ProfessorReview.find(params[:id])
  end

  # POST /professor_reviews
  # POST /professor_reviews.xml
  def create
    @professor_review = ProfessorReview.new(params[:professor_review])

    respond_to do |format|
      if @professor_review.save
        format.html { redirect_to(@professor_review, :notice => 'Professor review was successfully created.') }
        format.xml  { render :xml => @professor_review, :status => :created, :location => @professor_review }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @professor_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /professor_reviews/1
  # PUT /professor_reviews/1.xml
  def update
    @professor_review = ProfessorReview.find(params[:id])

    respond_to do |format|
      if @professor_review.update_attributes(params[:professor_review])
        format.html { redirect_to(@professor_review, :notice => 'Professor review was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @professor_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /professor_reviews/1
  # DELETE /professor_reviews/1.xml
  def destroy
    @professor_review = ProfessorReview.find(params[:id])
    @professor_review.destroy

    respond_to do |format|
      format.html { redirect_to(professor_reviews_url) }
      format.xml  { head :ok }
    end
  end
end
