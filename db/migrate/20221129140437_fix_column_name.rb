class FixColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :real_estates, :type, :type_of
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
