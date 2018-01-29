class StudentsController < ApplicationController
  # < ActionController
  def index
    @student = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def create
    student = Student.new
    student.name = param[:name]
    student.img_url = params[:img_url]
    student.house_id = params[:house_id]
    if student.save
      redirect_to "/students/#{student.id}"
    else
      render :new
    end
  end
end
