class CreateApis < ActiveRecord::Migration[7.0]
  def change
    create_table :apis do |t|
      t.integer :stars
      t.integer :watchers
      t.integer :forks

      t.timestamps
    end
  end
end
