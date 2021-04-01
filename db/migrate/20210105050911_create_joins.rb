class CreateJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :joins do |t|
      t.references :User, foreign_key: true
      t.references :Group, foreign_key: true

      t.timestamps
    end
  end
end
