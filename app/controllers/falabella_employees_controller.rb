class FalabellaEmployeesController < ApplicationController
  def index
    @employees = FalabellaEmployee.all
  end

  def show
    @employee = FalabellaEmployee.find(params[:id])
  end

  def new
    @employee = FalabellaEmployee.new()
  end

  def create
    @employee = FalabellaEmployee.create(falabella_employee_params)
    @employees = FalabellaEmployee.all
  end

  def edit
    @employee = FalabellaEmployee.find(params[:id])
  end

  def update
    @employee = FalabellaEmployee.find(params[:id])
    @employee.update(falabella_employee_params)
    @employees = FalabellaEmployee.all
  end

  def destroy
    @employee = FalabellaEmployee.find(params[:id])
    @employee.destroy
  end
  private
    def falabella_employee_params
      params.require(:falabella_employee).permit(:first_name, :last_name, :email, :phone_number, :address, :salary, :employee_type, :floor_id, :section_id, :shift_id)
    end
end
