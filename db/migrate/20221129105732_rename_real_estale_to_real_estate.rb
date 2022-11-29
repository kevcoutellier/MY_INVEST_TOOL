class RenameRealEstaleToRealEstate < ActiveRecord::Migration[7.0]
    def self.up
      rename_table :real_estales, :real_estates
    end
    def self.down
      rename_table :real_estates, :real_estales
    end
end
