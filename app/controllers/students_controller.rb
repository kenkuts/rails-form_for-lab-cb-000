class StudentsController < ApplicationController
  before_action :set_student, only: %i[ update edit show ]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def edit
  end

  def show
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
