class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false, default: 'New Group'
      t.string :icon, null: false

      t.timestamps
    end
  end
end
