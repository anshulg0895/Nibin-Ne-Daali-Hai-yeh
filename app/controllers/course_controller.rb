class CourseController < ApplicationController

  def create
    redirect_to action: "index"
  end

  def index
    if Student.check == true
      @courses = Course.all.order(:created_at)
    else
      redirect_to :controller => "welcome", :action => "login"
    end
  end

  def show
    if Student.check == true
      @course = Course.find(params[:temp])
    else
      redirect_to :controller => "welcome", :action => "login"
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to new_course_path
  end

  def edit
    if Student.check == true
      @course = Course.find(params[:id])
    else
      redirect_to :controller => "welcome", :action => "login"
    end
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(name: params[:course][:name], duration: params[:course][:duration], fee: params[:course][:fee], coordinator: params[:course][:coordinator])
      redirect_to action: "new"
    else
      render 'edit'
    end
  end
end
