class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|

      t.timestamps null: false
    end
  end
end
