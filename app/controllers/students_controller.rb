class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all.order(grade: :desc)
    render json: students
  end

  def highest_grade
    students = Student.order(grade: :desc).limit(1)
    student = students[0]
    render json: student
  end

end
