class AddApprovedToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :approved, :boolean
  end
end
