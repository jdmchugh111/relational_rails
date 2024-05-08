class CreateFestival < ActiveRecord::Migration[7.1]
  def change
    create_table :festivals do |t|
      t.boolean :age_restricted
      t.integer :stages
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
