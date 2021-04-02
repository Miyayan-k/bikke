class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string     :bike,            null: false
      t.integer    :year,            null: false
      t.integer    :displacement_id, null: false
      t.integer    :maker_id,        null: false
      t.integer    :type_id,         null: false
      t.float      :recommend,       null: false
      t.float      :comfort,         null: false
      t.float      :fuel,            null: false
      t.float      :maintenance,     null: false
      t.float      :cost,            null: false
      t.float      :speed,           null: false
      t.float      :look,            null: false
      t.text       :content,         null: false
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end