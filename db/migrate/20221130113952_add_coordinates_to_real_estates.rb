class AddCoordinatesToRealEstates < ActiveRecord::Migration[7.0]
  def change
    add_column :real_estates, :latitude, :float
    add_column :real_estates, :longitude, :float
  end
end
