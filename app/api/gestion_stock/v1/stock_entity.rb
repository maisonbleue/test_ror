module GestionStock
  module V1
    class StockEntity < Grape::Entity
      expose :quantity, documentation: {type: 'Integer', desc: 'Stok quantity'}
    end
    class HistoEntity < Grape::Entity
      expose :new_stock, documentation: {type: 'Integer', desc: 'Stock quantity'}
      expose :old_stock, documentation: {type: 'Integer', desc: 'Old quantity'}
      expose :updated_at, documentation: {type: 'Integer', desc: 'Date of modification'}
    end
  end
end
