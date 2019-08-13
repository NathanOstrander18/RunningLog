class AddPlaceToRun < ActiveRecord::Migration[5.2]
  def change
    add_reference :runs, :place, foreign_key: true
  end
end
