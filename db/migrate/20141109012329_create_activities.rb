class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :description
      t.float :calories
      t.string :unit

      t.timestamps
    end
  end
end
