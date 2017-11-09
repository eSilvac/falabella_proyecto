class ExternalEmployeesController < ApplicationController
  def index
    @employees = ExternalEmployee.all
  end

  def show
    @employee = ExternalEmployee.find(params[:id])
  end

  def new
    @employee = ExternalEmployee.new()
  end

  def create
    @employee = ExternalEmployee.create(external_employee_params)
    @employees = ExternalEmployee.all
  end

  def edit
    @employee = ExternalEmployee.find(params[:id])
  end

  def update
    @employee = ExternalEmployee.find(params[:id])
    @employee.update(external_employee_params)
    @employees = ExternalEmployee.all
  end

  def destroy
    @employee = ExternalEmployee.find(params[:id])
    @employee.destroy
  end

  private 
    def external_employee_params
      params.require(:external_employee).permit(:first_name, :last_name, :email, :phone_number, :address, :salary, :company_id, :section_id, :shift_id)
    end
end
