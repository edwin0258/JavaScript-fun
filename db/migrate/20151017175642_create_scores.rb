class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :total
      t.string :name
    end
  end
end
