class CreateMatchParticipations < ActiveRecord::Migration
  def change
    create_table :match_participations do |t|
      t.references :match, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.decimal :cached_score
      t.string :result

      t.timestamps null: false
    end
  end
end
