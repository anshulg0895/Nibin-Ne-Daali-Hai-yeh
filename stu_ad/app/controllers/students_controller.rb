class StudentsController < ApplicationController

  def new

  end

  def create
    @student = Student.new(name: params[:student][:name], contact: params[:student][:contact], email: params[:student][:email], father: params[:student][:father], age: params[:student][:age])
    @student.save
    redirect_to action: "new"
  end

  def index
     @students = Student.all.order(:created_at)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(name: params[:student][:name], contact: params[:student][:contact], email: params[:student][:email], father: params[:student][:father],age: params[:student][:age])
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
