class StudentsController < ApplicationController

  def index
    students = Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
