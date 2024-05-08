class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.boolean :headliner
      t.integer :performers
      t.string :name
      t.references :festival, null: false, foreign_key: true

      t.timestamps
    end
  end
end
