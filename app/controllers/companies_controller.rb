class CompaniesController < ApplicationController
  def index
    @companies = Company.order('name ASC')
  end

  def new
    @company = Company.new()
  end

  def create
    @company = Company.create(company_params)
    @companies = Company.order('name ASC')
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    company = Company.find(params[:id])
    company.update(company_params)
    @companies = Company.order('name ASC')
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
  end

  private
    def company_params
      params.require(:company).permit(:name, :phone_number)
    end
end
