class ChangePriceToBeDecimalInListings < ActiveRecord::Migration[5.2]
  def change
    change_column :listings, :price, :decimal
  end
end
