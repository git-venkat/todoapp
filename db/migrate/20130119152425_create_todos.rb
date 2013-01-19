class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :item
      t.text :description
      t.datetime :target_date

      t.timestamps
    end
  end
end
