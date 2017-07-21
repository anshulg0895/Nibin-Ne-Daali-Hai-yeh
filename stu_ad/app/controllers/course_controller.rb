class CourseController < ApplicationController

  def new
    @courses = Course.all.order(:created_at)
  end

  def index
  end

  def show
    @course = Course.find(params[:temp])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to new_course_path
  end

  def edit
    @course = Course.find(params[:id])
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
