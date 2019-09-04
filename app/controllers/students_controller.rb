class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  private
    def set_student
      @student = Student.find(params[:id]).to_s
    end

end