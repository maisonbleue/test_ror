require 'reusable'

module GestionStock
  module V1
    class Histos < Grape::API
      include Reusable
      version 'v1', using: :path
      format :json
      prefix :api

      use ApiErrorHandler
      resource :histo do
        desc "Return histo from a reference"
        params do
          requires :ref, type: String, desc: "Stock reference"
        end
        route_param :ref do
          get do
            @s, @tmp = Reusable.get_stock(params[:ref])
            present MyHisto.where(my_stock_id: @tmp[:id]), with: GestionStock::V1::HistoEntity
          end
        end
      end
    end
  end
end
