class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :name, default: "New Budget"
      t.decimal :amount, null: false, default: 0.0

      t.timestamps
    end
  end
end
