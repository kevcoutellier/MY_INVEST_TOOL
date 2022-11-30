class AddDescriptionToCustomInvests < ActiveRecord::Migration[7.0]
  def change
    add_column :custom_invests, :description, :text
  end
end
