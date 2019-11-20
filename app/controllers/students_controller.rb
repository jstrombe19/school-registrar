class StudentsController < ApplicationController

  def index
    @students = Student.all 
    render json: @students 
  end

  def show
    @student = Student.find(params[:id])
    render json: @student 
  end

  def create
    @student = Student.create(student_params)
    render json: @student 
  end

  def update
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy 
    render json: :index 
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :student_id, :graduated, :major)
  end

end
