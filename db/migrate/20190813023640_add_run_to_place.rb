class AddRunToPlace < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :run, foreign_key: true
  end
end
