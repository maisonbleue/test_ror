require 'reusable'

class UpateStockController < ApplicationController
  include Reusable
  def index
    $param = params[:ref_stock]
    @s, $tmp = Reusable.get_stock($param)
    if $tmp.blank?
      redirect_to manage_stock_index_url
    else
      @s2 = MyHisto.where(my_stock_id: $tmp[:id])
    end
  end
  def new
    Reusable.stock_up(params[:new_stock], $tmp)
    redirect_to upate_stock_index_url(:ref_stock => $param)
  end
end
