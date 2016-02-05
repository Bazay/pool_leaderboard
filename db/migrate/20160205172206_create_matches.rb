class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :status, default: 'not_played'
      t.datetime :played_at

      t.timestamps null: false
    end
  end
end
