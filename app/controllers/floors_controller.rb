class FloorsController < ApplicationController
  def index
    @floors = Floor.order('ASC')
  end

  def show
    @floors = Floor.all
    @floor = Floor.find(params[:id])
  end
end
