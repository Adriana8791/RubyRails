class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
