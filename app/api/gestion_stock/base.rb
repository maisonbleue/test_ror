require 'upate_stock_controller'

module GestionStock
  class Base < Grape::API
    mount GestionStock::V1::Stocks
    mount GestionStock::V1::Histos
  end
end
