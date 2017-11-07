class SectionsController < ApplicationController
  def show
    @section = Section.find(params[:id])
    @sections = Section.order('name ASC')
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
  end
end
