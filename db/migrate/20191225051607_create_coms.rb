class CreateComs < ActiveRecord::Migration[5.2]
  def change
    create_table :coms do |t|
      t.string :name,null: false
      t.integer :age,null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
