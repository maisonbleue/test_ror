module Reusable
  #Update the stock quantity of a reference
  def self.stock_up (parameter, db_stock)
    save = db_stock[:quantity] + parameter.to_i
    if save >= 0
      @histo = MyHisto.new
      @histo.update_attributes(:new_stock => save, :old_stock => db_stock[:quantity])
      db_stock.update_attributes(:quantity => save)
      db_stock.my_histos << @histo
    end
  end

  #Add a new reference and set the historic
  def self.add_reference(parameter)
    if MyStock.where(ref_stock: parameter).blank?
      @reference = MyStock.new
      @reference.update_attributes(:ref_stock => parameter, :quantity => 0)
      stock_up(0, @reference)
    end
  end

  #Get a reference
  def self.get_stock (parameter)
    @s = MyStock.where(ref_stock: parameter)
    @tmp = @s.first
    return @s, @tmp
  end
end
