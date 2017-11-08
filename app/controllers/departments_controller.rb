class DepartmentsController < ApplicationController
  def show
    @department = Department.find(params[:id])

  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
  end
end
