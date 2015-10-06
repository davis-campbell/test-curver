class CreateScoresets < ActiveRecord::Migration
  def change
    create_table :scoresets do |t|

      t.timestamps null: false
    end
  end
end
