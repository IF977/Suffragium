class CreateCasas < ActiveRecord::Migration
  def change
    create_table :casas do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
