class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name :null false
      t.integer :age :null false
      t.text :comment :null false
      t.timestamps
    end
  end
end


# ノットヌル設定をしてあげたい
# ロールバックしてないから反映されてない