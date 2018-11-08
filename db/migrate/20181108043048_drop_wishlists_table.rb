class DropWishlistsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :wishlists
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
