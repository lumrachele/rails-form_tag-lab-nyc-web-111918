#require "byebug"

class StudentsController < ApplicationController
  before_action :find_student, only: [:show]

  def index
    @students = Student.all
  end

  def show
    find_student
  end

  def new
    Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to students_path
  end

  private

  def student_params
    params.permit(:first_name, :last_name)
  end

  def find_student
    @student = Student.find(params[:id])

  end


end
