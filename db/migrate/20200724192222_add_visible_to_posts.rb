class AddVisibleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :visible, :boolean
  end
end
