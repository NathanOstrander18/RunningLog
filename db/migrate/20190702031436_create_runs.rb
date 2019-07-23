class CreateRuns < ActiveRecord::Migration[5.2]
  def change
    create_table :runs do |t|
      t.string :distance
      t.string :unit
      t.string :time
      t.references :user, foreign_key: true

      t.timestamps
    end
	add_index :runs, [:user_id, :created_at]
  end
end
