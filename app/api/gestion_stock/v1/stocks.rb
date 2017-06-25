require 'reusable'

module GestionStock
  module V1
    class Stocks < Grape::API
      include Reusable
      version 'v1', using: :path
      format :json
      prefix :api

      use ApiErrorHandler
      resource :stocks do
        desc "Return stock form a reference"
        params do
          requires :ref, type: String, desc: "Stock reference"
        end
        route_param :ref do
          get do
            present MyStock.where(ref_stock: params[:ref]), with: GestionStock::V1::StockEntity
          end
        end

        desc "Modify a stock quantity"
        params do
          requires :stock, type: Hash do
            requires :ref, type: String
            requires :val, type: Integer
          end
        end
        post do
          @s, @tmp = Reusable.get_stock(params[:stock][:ref])
          Reusable.stock_up(params[:stock][:val], @tmp)
        end
      end
    end
  end
end
