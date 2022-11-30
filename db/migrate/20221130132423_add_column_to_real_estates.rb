class AddColumnToRealEstates < ActiveRecord::Migration[7.0]
  def change
    add_column :real_estates, :estimation, :integer
  end
end
