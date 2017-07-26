class StudentsController < ApplicationController

  def new
    if Student.check == false
      redirect_to :controller => "welcome", :action => "login"
    end
  end

  def create
    @course = Course.find_by_id(params[:student][:course_id])
    @student = Student.new(name: params[:student][:name], contact: params[:student][:contact], email: params[:student][:email], father: params[:student][:father], dob: params[:student][:dob], course: @course)
    @student.save
    redirect_to action: "new"
  end

  def index
    if Student.check == true
      @students = Student.all.order(:created_at)
    else
      redirect_to :controller => "welcome", :action => "login"
    end
  end

  def show
    if Student.check == true
      @student = Student.find(params[:id])
    else
      redirect_to :controller => "welcome", :action => "login"
    end
  end

  def edit
    if Student.check == true
      @student = Student.find(params[:id])
    else
      redirect_to :controller => "welcome", :action => "login"
    end
  end

  def update
    @course = Course.find_by_id(params[:student][:course_id])
    @student = Student.find(params[:id])
    if @student.update(name: params[:student][:name], contact: params[:student][:contact], email: params[:student][:email], father: params[:student][:father], dob: params[:student][:dob], course: @course)
      redirect_to students_path
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end
end
