class CreateBikkes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikkes do |t|
      t.string     :bike,            null: false
      t.integer    :year
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
      t.text       :review,          null: false
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
