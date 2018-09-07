class CreateWorlds < ActiveRecord::Migration[5.2]
  def change
    create_table :worlds do |t|
      t.text :name
      t.text :constellation
      t.text :galaxy
      t.boolean :viewed

      t.timestamps
    end
  end
end
