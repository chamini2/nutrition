class AddApprovedToSnack < ActiveRecord::Migration
  def change
    add_column :snacks, :approved, :boolean
  end
end
