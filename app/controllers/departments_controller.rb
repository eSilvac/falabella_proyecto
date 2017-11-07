class DepartmentsController < ApplicationController
  def show
    @department = Department.find(params[:id])
    @departments = Department.order('name ASC')
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
  end
end
