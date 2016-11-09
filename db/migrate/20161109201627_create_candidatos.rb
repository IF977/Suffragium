class CreateCandidatos < ActiveRecord::Migration
  def change
    drop_table :candidatos
    create_table :candidatos do |t|
      t.string :nome
      t.string :numero
      t.string :partido

      t.timestamps null: false
    end
  end
end
