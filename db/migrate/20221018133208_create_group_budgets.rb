class CreateGroupBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :group_budgets do |t|
      t.references :group, null: false, foreign_key: true
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
