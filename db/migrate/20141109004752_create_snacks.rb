class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :name
      t.float :calories

      t.timestamps
    end
  end
end
