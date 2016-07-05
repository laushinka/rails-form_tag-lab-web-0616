
class StudentsController < ApplicationController
  def new
    # @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.save
    redirect_to students_path
    else
      render :new
    end
  end
  #
  # def create
  # # binding.pry
  # @student = Student.create(params.require(:student).permit(:first_name, :last_name))
  # redirect_to students_path
  # end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  #
  def student_params
    params.require(:student).permit(:first_name, :last_name, :other_things)
  end

end
