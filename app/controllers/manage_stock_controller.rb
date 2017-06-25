require 'reusable'

class ManageStockController < ApplicationController

  def index
    @items = MyStock.all
  end

  def new
    Reusable.add_reference(params[:new_stock])
    redirect_to manage_stock_index_url()
  end
end
