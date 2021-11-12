class CreateRecomendaciones < ActiveRecord::Migration[6.1]
  def change
    create_table :recomendaciones do |t|
      t.string :titulo
      t.text :contenido
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
