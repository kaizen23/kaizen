
class LessonsController < ApplicationController
  # GET /lessons
  # GET /lessons.json
  before_filter :confirm_login
  layout :layout_chooser
  before_filter :load_course
  filter_resource_access
  
  # GET /lessons
  # GET /lessons.json
   
  
  
  
  
  def index
    #@lessons = Lesson.all
    @lessons = @course.lessons.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lessons }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    #@lesson = Lesson.find(params[:id])
    @lesson = @course.lessons.find(params[:id])
    @lessons = @course.lessons.all
    @courses = Course.all
    @pages = @lesson.pages.all
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.json
  def new
    #@lesson = Lesson.new
    @lesson = @course.lessons.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lesson }
    end
  end

  # GET /lessons/1/edit
  def edit
    #@lesson = Lesson.find(params[:id])
    @lesson = @course.lessons.find(params[:id])
  end

  # POST /lessons
  # POST /lessons.json
  def create
    #@lesson = Lesson.new(params[:lesson])
    @lesson = @course.lessons.new(params[:lesson])

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to [@course,@lesson], :notice => 'Lesson was successfully created.' }
        format.json { render :json => @lesson, :status => :created, :location => @lesson }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.json
  def update
    #@lesson = Lesson.find(params[:id])
    @lesson = @course.lessons.find(params[:id])

    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        format.html { redirect_to [@course,@lesson], :notice => 'Lesson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    #@lesson = Lesson.find(params[:id])
    @lesson = @course.lessons.find(params[:id])
    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to course_lessons_path(@course) }
      format.json { head :no_content }
    end
  end
  
  
   private

    def load_course
      @course = Course.find(params[:course_id])
    end
  
end
