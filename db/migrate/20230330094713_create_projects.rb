class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :category_id,       null: false
      t.datetime :limit,           null: false
      t.integer :area_id,           null: false
      t.text :detail,               null: false
      t.text :suppulement
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
